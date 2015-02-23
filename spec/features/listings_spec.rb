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
    it "can see their listings" do
      user = FactoryGirl.create(:user)

      FactoryGirl.create(:listing, title: "User Listing", user: user)
      FactoryGirl.create(
        :setting,
        name: "bart_max_distance",
        value: "1",
        user: user
      )

      visit listings_path(as: user)

      expect(page).to have_content("User Listing")
    end

    it "cannot see others' listings" do
      sue = FactoryGirl.create(:user)
      parker = FactoryGirl.create(:user)

      FactoryGirl.create(:listing, title: "Parker Listing", user: parker)
      FactoryGirl.create(
        :setting,
        name: "bart_max_distance",
        value: "1",
        user: sue
      )

      visit listings_path(as: sue)

      expect(page).not_to have_content("Parker Listing")
    end


    it "filters listings too far from bart" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(
        :listing,
        title: "Far Listing",
        bart_distance: 2.0,
        user: user)
      FactoryGirl.create(
        :listing,
        title: "Close Listing",
        bart_distance: 0.2,
        user: user)
      FactoryGirl.create(
        :setting,
        name: "bart_max_distance",
        value: "1",
        user: user
      )

      visit listings_path(as: user)

      expect(page).to have_content("Close Listing")
      expect(page).not_to have_content("Far Listing")
    end
  end
end
