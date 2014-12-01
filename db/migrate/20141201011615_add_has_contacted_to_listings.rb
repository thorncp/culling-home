class AddHasContactedToListings < ActiveRecord::Migration
  def change
    add_column :listings, :has_contacted, :boolean, default: false
  end
end
