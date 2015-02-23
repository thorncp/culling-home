class AddUserIdToListing < ActiveRecord::Migration
  def up
    add_column :listings, :user_id, :integer
    user_id = User.first.id
    Listing.update_all(user_id: user_id)
    change_column :listings, :user_id, :integer, null: false
    add_index :listings, :user_id
  end

  def down
    remove_column :listings, :user_id, :integer
  end
end
