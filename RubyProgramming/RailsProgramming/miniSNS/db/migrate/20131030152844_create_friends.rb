class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :member_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
