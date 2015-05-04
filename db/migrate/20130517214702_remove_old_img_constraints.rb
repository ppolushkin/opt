class RemoveOldImgConstraints < ActiveRecord::Migration
  def up
    change_column :products, :small_image_name, :string, :null => true
    change_column :products, :big_image_name, :string, :null => true
    change_column :products, :extra_image_name, :string, :null => true
  end

  def down
    change_column :products, :small_image_name, :string, :null => false
    change_column :products, :big_image_name, :string, :null => false
  end
end
