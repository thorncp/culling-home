namespace :transit do
  desc "Find an update transit time and directions"
  task update: :environment do
    require "transit_information"

    listings = Listing.where(transit_travel_in_minutes: nil, transit_directions_url: nil)
    listings.find_each do |listing|
      if !listing.address
        puts "ALERT: No address found for #{listing.id}: #{listing.title}"
        next
      end

      print "."

      transit_info = TransitInformation.new(listing.address)
      listing.update_attributes(
        transit_travel_in_minutes: transit_info.time_in_minutes,
        transit_directions_url: transit_info.public_url,
      )
    end
  end
end
