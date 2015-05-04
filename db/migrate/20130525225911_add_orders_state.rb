class AddOrdersState < ActiveRecord::Migration
  def up
    add_column :orders, :state, :string, :null => false, :default => "new"
  end

  def down
    remove_column :orders, :state
  end
end
