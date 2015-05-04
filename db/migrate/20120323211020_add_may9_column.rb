class AddMay9Column < ActiveRecord::Migration

  def self.up
    add_column :products, :may9, :string, :null => false, :default => '0'
  end

  def self.down
    remove_column :products, :may9
  end

end
