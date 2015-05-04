class CreateDepotItems < ActiveRecord::Migration

  def up
    create_table :depot_items do |t|
      t.integer :product_id
      t.integer :depot_id
      t.integer :count, :null=>false
      t.integer :hold_count, :null=>false

      t.timestamps
    end
  end

  def down
    drop_table :depot_items
  end

end
