class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.string  :fb_id
      t.integer :user_id
      t.string  :name
      t.boolean :visible, :default => true

      t.timestamps
    end

    add_index :friends, [:fb_id, :user_id]
  end

  def self.down
    drop_table :friends
  end
end
