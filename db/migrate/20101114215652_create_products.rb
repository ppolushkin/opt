class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :article, :limit=>6, :null=>false
      t.string :name, :limit=>50, :null=>false
      t.string :height, :limit=>10, :null=>true
      t.string :width, :limit=>10, :null=>true
      t.string :notes, :limit=>255, :null=>true
      t.string :small_image_name, :limit=>50, :null=>false
      t.string :big_image_name, :limit=>50, :null=>false
      t.string :extra_image_name, :limit=>50, :null=>true, :default=>nil
      t.decimal :price, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
