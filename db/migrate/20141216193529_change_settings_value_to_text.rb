class ChangeSettingsValueToText < ActiveRecord::Migration
  def up
    change_column :settings, :value, :text, null: false, limit: nil
  end

  def down
    change_column :settings, :value, :string
  end
end
