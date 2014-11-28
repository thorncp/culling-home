class AddBartStationIdToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :bart_station, index: true
  end
end
