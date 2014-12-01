namespace :listings do
  desc "Find and locate new listings"
  task update: %w{crawl:unlisted crawl:listings crawl:locations crawl:contact_info bart:closest bart:distance} do
  end
end
