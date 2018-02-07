class CreateFollowingRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :following_relationships do |t|
      t.references :follower, foreign_key: { to_table: :users }, null: false
      t.references :followed_user, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
