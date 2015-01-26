namespace :users do
  desc "Create user and settings"
  task :create, [:email] => :environment do |task, args|
    require "securerandom"
    password = SecureRandom.hex(10)
    user = User.create!(email: args[:email], password: password)
    Setting.create!(name: "bart_max_distance", value: "1", user: user)
    Setting.create!(name: "email_body", value: "Rent to me", user: user)
    puts "Password: #{password}"
  end
end
