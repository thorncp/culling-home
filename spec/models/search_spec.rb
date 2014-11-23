require "rails_helper"

describe Search do
  it { should validate_presence_of :description }
  it { should validate_presence_of :url }

  it "should validate url" do
    search = build_search(url: "fake")
    expect(search).not_to be_valid
    expect(search.errors[:url].size).to be(1)

    expect(build_search).to be_valid
  end

  def build_search(attrs = {})
    defaults = {
      description: "I am a search",
      url: "http://example.com/search?q=hello",
    }

    Search.new(defaults.merge(attrs))
  end
end
