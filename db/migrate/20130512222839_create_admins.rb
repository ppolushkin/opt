class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :email
      t.string :password_hash

      t.timestamps
    end

    Admin.create(:email => 'pavel.polushkin@gmail.com', :password_hash => '$2a$10$IzDLzki.iwAFv1H5pNYBqOVu2V2KCVfstMSNfejWV3lkaw5oQ7yUe')
  end

  def self.down
    drop_table :admins
  end
end
