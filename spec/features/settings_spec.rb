require "rails_helper"

describe "Settings" do
  context "when user is not logged in" do
    it "cannot see any settings" do
      FactoryGirl.create(:setting, name: "Awesome Setting")

      visit settings_path

      expect(page).not_to have_content("Awesome Setting")
    end
  end

  context "when user is logged in" do
    it "can see their settings" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:setting, name: "Awesome Setting", user: user)

      visit settings_path(as: user)

      expect(page).to have_content("Awesome Setting")
    end

    it "cannot see others' settings" do
      sue = FactoryGirl.create(:user)
      FactoryGirl.create(:setting, name: "Sue Setting", user: sue)
      parker = FactoryGirl.create(:user)
      FactoryGirl.create(:setting, name: "Parker Setting", user: parker)

      visit settings_path(as: sue)

      expect(page).not_to have_content("Parker Setting")
    end

    it "can edit a setting" do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:setting, user: user, name: "Name", value: "Ok Name")

      visit settings_path(as: user)
      page.find(".edit-setting").click
      fill_in "Name", with: "Awesome Name"
      click_on "Update Setting"

      expect(page).to have_content "Awesome Name"
      expect(page).not_to have_content "Ok Name"
    end
  end
end
