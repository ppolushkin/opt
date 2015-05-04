class CreateRevisions < ActiveRecord::Migration
  def self.up
    create_table :revisions do |t|
      # Reference to the Page this Revision belongs to
      t.column "page_id", :integer
      # The content of the Revision
      t.column "content", :text

      t.timestamps
    end
  end

  def self.down
    drop_table :revisions
  end
end
