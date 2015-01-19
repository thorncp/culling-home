require "rails_helper"

describe "Searches" do
  context "when user is not logged in" do
    it "cannot see any searches" do
      FactoryGirl.create :search, description: "Awesome Search"

      visit searches_path

      expect(page).not_to have_content("Awesome Search")
    end
  end

  context "when user is logged in" do
    it "can see their searches" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create :search, description: "Awesome Search", user: user

      visit searches_path(as: user)

      expect(page).to have_content("Awesome Search")
    end

    it "cannot see others' searches" do
      sue = FactoryGirl.create(:user)
      FactoryGirl.create :search, description: "Sue Search", user: sue
      parker = FactoryGirl.create(:user)
      FactoryGirl.create :search, description: "Parker Search", user: parker

      visit searches_path(as: sue)

      expect(page).not_to have_content("Parker Search")
    end

    it "can create a search" do
      user = FactoryGirl.create(:user)

      visit searches_path(as: user)
      page.find("#new-search").click
      fill_in "Description", with: "Awesome Search"
      fill_in "Url", with: "http://search.example.com/1"
      click_on "Create Search"

      expect(page).to have_content "Awesome Search"
    end

    it "can edit a search" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:search, user: user, description: "Ok Search")

      visit searches_path(as: user)
      page.find(".edit-search").click
      fill_in "Description", with: "Awesome Search"
      click_on "Update Search"

      expect(page).to have_content "Awesome Search"
      expect(page).not_to have_content "Ok Search"
    end

    it "can delete a search" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:search, user: user, description: "Ok Search")

      visit searches_path(as: user)
      page.find(".delete-search").click

      expect(page).not_to have_content "Ok Search"
    end
  end
end
