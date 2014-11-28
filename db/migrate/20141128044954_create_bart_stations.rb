class CreateBartStations < ActiveRecord::Migration
  def change
    create_table :bart_stations do |t|
      t.string :name, nil: false
      t.string :abbreviation, nil: false
      t.float :latitude, nil: false
      t.float :longitude, nil: false
      t.string :address, nil: false
      t.string :city, nil: false
      t.string :county, nil: false
      t.string :state, nil: false
      t.string :zipcode, nil: false

      t.timestamps
    end
  end
end
