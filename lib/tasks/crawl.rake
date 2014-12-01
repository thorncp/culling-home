namespace :crawl do
  desc "Crawl searches for new listings"
  task :listings => :environment do
    require "craigslist_index_parser"

    Search.find_each do |search|
      CraigslistIndexParser.new(search).listings.each do |attrs|
        Listing.find_or_create_by(attrs)
      end
    end
  end

  desc "Crawl listings for location data"
  task :locations => :environment do
    require "craigslist_location_parser"

    listings = Listing.where(has_map: true, latitude: nil, longitude: nil)

    listings.find_each do |listing|
      # TODO: don't `rescue next` this is super bad
      location = CraigslistLocationParser.new(listing).location rescue next
      listing.update_attributes(location)
    end
  end

  desc "Crawl for unlisted listings and delete them"
  task :unlisted => :environment do
    require "craigslist_unlisted_parser"

    listings = Listing.where("are_interested is null OR are_interested = ?", true)
    listings.find_each do |listing|
      if CraigslistUnlistedParser.new(listing).unlisted?
        listing.destroy
      end
    end
  end
end
