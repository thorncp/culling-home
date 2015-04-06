namespace :crawl do
  desc "Crawl searches for new listings"
  task :listings => :environment do
    require "craigslist_index_parser"

    Search.where(enabled: true).find_each do |search|
      puts "Running search: #{search.description}"
      user = search.user

      CraigslistIndexParser.new(search).listings.each do |attrs|
        print "."
        listing = user.listings.find_or_initialize_by(href: attrs[:href])
        listing.update_attributes(attrs)
      end

      puts
    end
  end

  desc "Crawl listings for location data"
  task :locations => :environment do
    require "craigslist_location_parser"

    puts "Finding listing locations"

    listings = Listing.where(has_map: true, latitude: nil, longitude: nil)

    listings.find_each do |listing|
      print "."
      # TODO: don't `rescue next` this is super bad
      location = CraigslistLocationParser.new(listing).location rescue next
      listing.update_attributes(location)
    end

    puts
  end

  desc "Crawl for unlisted listings and delete them"
  task :unlisted => :environment do
    require "craigslist_unlisted_parser"

    puts "Finding unlisted listings"

    listings = Listing.where("are_interested is null OR are_interested = ? and unlisted = ?", true, false)
    listings.find_each do |listing|
      print "."
      if CraigslistUnlistedParser.new(listing).unlisted?
        if listing.are_interested
          listing.update_attributes(unlisted: true)
        else
          listing.destroy
        end
      end
    end

    puts
  end

  desc "Crawl for listings contact information"
  task :contact_info => :environment do
    require "craigslist_contact_info_parser"

    puts "Finding listing contact info"
    listings = Listing.where("email is null AND (are_interested is null OR are_interested = ?)", true)

    listings.find_each do |listing|
      print "."
      info = CraigslistContactInfoParser.new(listing).contact_info
      listing.update_attributes(info)
    end

    puts
  end
end
