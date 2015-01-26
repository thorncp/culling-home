FactoryGirl.define do
  factory :listing do
    title "The Listing"
    sequence :href do |n|
      "http://neighborhood.example.com/listings/#{n}"
    end
    user
  end
end
