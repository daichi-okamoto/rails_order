class EmailFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # record orderのインスタンス
    # attribute バリデートを設定した時の属性名
    # value 検証すべき値
    return if /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.match?(value)

    record.errors.add(attribute, 'の形式が正しくありません')
  end
end
