class AddUnlistedToListing < ActiveRecord::Migration
  def self.up
    add_column :listings, :unlisted, :boolean, :default => false
  end

  def self.down
    remove_column :listings, :unlisted
  end
end
