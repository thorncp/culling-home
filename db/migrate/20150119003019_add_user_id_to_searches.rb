class AddUserIdToSearches < ActiveRecord::Migration
  def up
    add_column :searches, :user_id, :integer
    add_index :searches, :user_id
    user_id = User.first.id
    Search.update_all(user_id: user_id)
    change_column :searches, :user_id, :integer, null: false
  end

  def down
    remove_column :searches, :user_id, :integer
  end
end
