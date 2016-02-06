namespace :listings do
  desc "Find and locate new listings"
  task update: %w{crawl:unlisted crawl:listings crawl:locations crawl:contact_info transit:update walkscore:update} do
  end
end
