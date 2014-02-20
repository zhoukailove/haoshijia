class ChangeConvenientColumns < ActiveRecord::Migration
  def change
    add_column :convenients, :wangluo, :boolean, :default => false
    add_column :convenients, :duwei, :boolean, :default => false
    remove_column :convenients, :yugang
  end
end
