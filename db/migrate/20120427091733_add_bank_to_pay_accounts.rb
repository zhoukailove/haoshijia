class AddBankToPayAccounts < ActiveRecord::Migration
  def change
    add_column :pay_accounts, :bank, :string
  end
end
