class SetPathToFotos < ActiveRecord::Migration
  def up
   execute "update products set small_img = substring(small_image_name from 14)"
   execute "update products set medium_img = substring(big_image_name from 14)"
   execute "update products set big_img = substring(extra_image_name from 14)"
#   execute "update products set small_img = '_' || substring(small_img from 2) where small_img like 'И%'"
#   execute "update products set meduim_img = '_' || substring(medium_img from 2) where medium_img like 'И%'"
  end

  def down
  end
end
