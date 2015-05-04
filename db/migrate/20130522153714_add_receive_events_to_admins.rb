class AddReceiveEventsToAdmins < ActiveRecord::Migration

  def up
    add_column :admins, :receive_emails, :boolean, :null => false, :default => true
  end

  def down
    remove_column :products, :retail_price
  end

end
