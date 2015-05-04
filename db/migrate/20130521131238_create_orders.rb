class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :basket_id
      t.string :full_name
      t.string :phone
      t.string :email
      t.string :address
      t.boolean :delivery
      t.text :notes

      t.timestamps
    end
  end
end
