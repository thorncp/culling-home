class AddBartDistanceToListings < ActiveRecord::Migration
  def change
    add_column :listings, :bart_distance, :float
  end
end
