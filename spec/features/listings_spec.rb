require "rails_helper"

describe "Listings" do
  context "when user is not logged in" do
    it "cannot see any listings" do
      FactoryGirl.create :listing, title: "Awesome Listing"

      visit listings_path

      expect(page).not_to have_content("Awesome Listing")
    end
  end

  context "when user is logged in" do
    it "can see all listings" do
      FactoryGirl.create :listing, title: "Awesome Listing"
      user = FactoryGirl.create(:user)

      visit listings_path(as: user)

      expect(page).to have_content("Awesome Listing")
    end
  end
end
