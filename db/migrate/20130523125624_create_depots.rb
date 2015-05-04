# coding: utf-8

class CreateDepots < ActiveRecord::Migration
  def up
    create_table :depots do |t|
      t.string :name, :null=>false

      t.timestamps
    end

    Depot.create(:name => 'Санкт-Петербург, ул. Грибакиных')
  end

  def down
    drop_table :depots
  end


end
