namespace :listings do
  desc "Find and locate new listings"
  task update: %w{crawl:listings crawl:locations bart:closest bart:distance} do
  end
end
