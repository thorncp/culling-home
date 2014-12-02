namespace :listings do
  desc "Find and locate new listings"
  task update: %w{crawl:unlisted crawl:listings crawl:locations crawl:contact_info bart:closest bart:distance} do
  end

  desc "Remove duplicate listings"
  task remove_duplicates: :environment do
    puts "Deleting duplicates"
    dupes = Listing.select(:href).group(:href).having('count(*) > 1').map(&:href)
    dupes.each do |href|
      all = Listing.where(href: href)
      all.drop(1).each do |listing|
        print "."
        listing.destroy
      end
    end
    puts
  end
end
