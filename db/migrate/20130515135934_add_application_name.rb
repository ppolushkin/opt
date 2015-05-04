class AddApplicationName < ActiveRecord::Migration
  def up
    add_column :pages, :application_name, :string, :null => false, :default => 'obelisk'
    add_column :feedback_mails, :application_name, :string, :null => false, :default => 'obelisk'
  end

  def down
    remove_column :pages, :application_name
    remove_column :feedback_mails, :application_name
  end
end
