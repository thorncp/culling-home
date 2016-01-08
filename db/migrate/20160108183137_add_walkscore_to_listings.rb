class AddWalkscoreToListings < ActiveRecord::Migration
  def change
    add_column :listings, :walk_score, :integer
    add_column :listings, :transit_score, :integer
    add_column :listings, :bike_score, :integer
    add_column :listings, :personal_crime_grade, :string
    add_column :listings, :property_crime_grade, :string
  end
end
