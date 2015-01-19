FactoryGirl.define do
  factory :search do
    sequence :url do |n|
      "http://searches.example.com/#{n}"
    end
    description "Searching for things"
    user
  end
end
