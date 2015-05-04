class CreateTapes < ActiveRecord::Migration

  def up
    create_table :tapes do |t|
      t.string :text
      t.string :color
      t.integer :count
      t.column 'basket_id', :integer
      t.column 'product_id', :integer
      t.timestamps
    end

  end

  def down
    drop_table :tapes
  end

end
