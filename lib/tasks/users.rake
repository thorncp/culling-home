namespace :users do
  desc "Create user and settings"
  task :create, [:email] => :environment do |task, args|
    require "securerandom"
    password = SecureRandom.hex(10)
    user = User.create!(email: args[:email], password: password)
    Setting.create!(name: "bart_max_distance", value: "1", user: user)
    Setting.create!(name: "email_body", value: "Rent to me", user: user)
    Setting.create!(name: "transit_max_time", value: "60", user: user)
    Setting.create!(name: "walk_score_minimum", value: "70", user: user)
    Setting.create!(name: "transit_score_minimum", value: "50", user: user)
    Setting.create!(name: "bike_score_minimum", value: "70", user: user)
    Setting.create!(name: "personal_crime_grade_minimum", value: "B", user: user)
    Setting.create!(name: "property_crime_grade_minimum", value: "B", user: user)
    puts "Password: #{password}"
  end
end
