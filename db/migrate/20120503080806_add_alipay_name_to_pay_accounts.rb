class AddAlipayNameToPayAccounts < ActiveRecord::Migration
  def change
    add_column :pay_accounts, :alipay_name, :string
  end
end
