require "rails_helper"

describe "Listings" do
  context "when user is not logged in" do
    it "cannot see any listings" do
      Listing.create!(title: "Awesome Listing", href: "http://example.com/1")

      visit listings_path

      expect(page).not_to have_content("Awesome Listing")
    end
  end
end
