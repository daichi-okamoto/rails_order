class AddDirectMailEnamledToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :direct_mail_enabled, :boolean, null: false, default: false, comment: "ダイレクトメール送信可否"
  end
end
