FactoryGirl.define do
  factory :setting do
    sequence :name do |n|
      "Setting #{n}"
    end
    value "Setting Value"
    user
  end
end
