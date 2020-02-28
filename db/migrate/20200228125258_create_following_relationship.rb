class CreateFollowingRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table :following_relationships do |t|
      t.integer :follower_id, null: false
      t.integer :followed_user_id, null: false
      t.timestamps
    end

    add_foreign_key :following_relationships, :users, column: :follower_id
    add_foreign_key :following_relationships, :users, column: :followed_user_id
  end
end
