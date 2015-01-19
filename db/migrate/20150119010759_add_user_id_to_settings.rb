class AddUserIdToSettings < ActiveRecord::Migration
  def up
    add_column :settings, :user_id, :integer
    add_index :settings, :user_id
    user_id = User.first.id
    Setting.update_all(user_id: user_id)
    change_column :settings, :user_id, :integer, null: false
    remove_index :settings, :name
    add_index :settings, [:name, :user_id], unique: true
  end

  def down
    remove_column :settings, :user_id, :integer
    add_index :settings, :name, unique: true
  end
end
