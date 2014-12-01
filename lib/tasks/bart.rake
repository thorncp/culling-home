namespace :bart do
  desc "Find closest BART station for listings"
  task closest: :environment do
    require "bart_finder"

    puts "Finding closest BART stations"

    listings = Listing.where("latitude is not null AND longitude is not null AND bart_station_id is null")
    listings.find_each do |listing|
      print "."

      bart_station = BartFinder.new(listing).closest
      listing.update_attributes(bart_station_id: bart_station.id)
    end

    puts
  end

  desc "Find walking distance to closest BART station"
  task distance: :environment do
    require "bart_directions"

    puts "Find walking distance to closest BART stations"

    listings = Listing.where("bart_station_id is not null AND bart_distance is null")
    listings.find_each do |listing|
      print "."

      distance = BartDirections.new(listing).distance
      listing.update_attributes(bart_distance: distance)
    end

    puts
  end
end
