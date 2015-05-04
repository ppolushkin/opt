class AddOrderToBasket < ActiveRecord::Migration

  def up
    add_column :baskets, :order_id, :integer, :null => true
  end

  def down
    remove_column :baskets, :order_id
  end

end
