require "net/http"

class CraigslistContactInfoParser
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def contact_info
    {
      email: email,
    }
  end

  private

  def email
    emails = current_document.css(".anonemail")
    if emails.any?
      emails.first.text
    end
  end

  def reply_url
    listing.href.sub(/\.html$/, "").sub(".org/", ".org/reply/")
  end

  def current_document
    @doc ||= Nokogiri::XML(Net::HTTP.get(URI(reply_url)))
  end
end
