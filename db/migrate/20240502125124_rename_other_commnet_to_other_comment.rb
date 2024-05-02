class RenameOtherCommnetToOtherComment < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :other_commnet, :other_comment
    change_column :orders, :other_comment, :string, null: false, default: '', limit: 1000, comment: 'その他・ご要望'
  end
end
