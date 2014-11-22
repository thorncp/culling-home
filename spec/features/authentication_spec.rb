require "rails_helper"

feature "Authentication" do
  scenario "denies no username/password" do
    visit root_url
    expect(page.text).to match(/access denied/i)
  end

  scenario "denies incorrect username/password" do
    page.driver.browser.basic_authorize(ENV["HTTP_BASIC_AUTH_USERNAME"], "nope")
    visit root_url
    expect(page.text).to match(/access denied/i)
  end

  scenario "allows correct username/password" do
    page.driver.browser.basic_authorize(ENV["HTTP_BASIC_AUTH_USERNAME"],
                                        ENV["HTTP_BASIC_AUTH_PASSWORD"])
    visit root_url
    expect(page.text).not_to match(/access denied/i)
  end
end
