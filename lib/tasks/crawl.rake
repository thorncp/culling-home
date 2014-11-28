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
end
