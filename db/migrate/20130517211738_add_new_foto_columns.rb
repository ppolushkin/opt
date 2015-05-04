class AddNewFotoColumns < ActiveRecord::Migration
  def up
    add_column :products, :small_img, :string
    add_column :products, :medium_img, :string
    add_column :products, :big_img, :string
  end

  def down
    remove_column :products, :small_img
    remove_column :products, :medium_img
    remove_column :products, :big_img
  end
end
