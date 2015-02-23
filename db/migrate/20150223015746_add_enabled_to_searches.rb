class AddEnabledToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :enabled, :boolean, null: false, default: true
  end
end
