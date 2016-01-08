class AddTransitInfoToListing < ActiveRecord::Migration
  def change
    add_column :listings, :transit_travel_in_minutes, :float
    add_column :listings, :transit_directions_url, :string
  end
end
