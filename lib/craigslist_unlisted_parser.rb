require "net/http"

class CraigslistUnlistedParser
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def unlisted?
    current_document.css("#has_been_removed").any?
  end

  private

  def current_document
    Nokogiri::XML(Net::HTTP.get(URI(listing.href)))
  end
end
