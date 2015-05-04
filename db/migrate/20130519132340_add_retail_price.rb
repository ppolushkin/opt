class AddRetailPrice < ActiveRecord::Migration

  def up
    add_column :products, :retail_price, :decimal, :null => false, :default => 0
    Product.reset_column_information
    Rake::Task['migration:populate_retail_price'].invoke
  end

  def down
    remove_column :products, :retail_price
  end

end
