class AddColumnsToPayAccount < ActiveRecord::Migration
  def change
    add_column :pay_accounts, :alipay_account, :string
  end
end
