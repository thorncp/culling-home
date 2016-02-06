require "open-uri"

namespace :walkscore do
  desc "Find an update walkscore info"
  task update: :environment do
    require "walk_score_information"
    listings = Listing.where(walk_score: nil)

    listings.find_each do |listing|
      if !listing.address
        puts "ALERT: No address found for #{listing.id}: #{listing.title}"
        next
      end

      print "."
      walk_score = WalkScoreInformation.new(listing.address)
      listing.update_attributes(walk_score.to_h)
    end
  end
end
