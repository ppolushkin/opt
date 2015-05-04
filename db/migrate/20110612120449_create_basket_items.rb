class CreateBasketItems < ActiveRecord::Migration
  def self.up
    create_table :basket_items do |t|

      # Reference to the Basket
      t.column "basket_id", :integer
      # Reference to the Product
      t.column "product_id", :integer

      t.column "count", :integer, :default => 1
    end
  end

  def self.down
    drop_table :basket_items
  end
end
