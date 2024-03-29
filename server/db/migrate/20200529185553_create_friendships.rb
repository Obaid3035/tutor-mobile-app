class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.references :friend
      t.integer :status, default: 0, index: true
      t.timestamps
    end
  end
end
