class CraigslistLocationParser
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def location
    {
      latitude: latitude,
      longitude: longitude,
      address: address,
    }
  end

  private

  def current_document
    Nokogiri::XML(Net::HTTP.get(URI(listing.href)))
  end

  def map
    @map ||= current_document.css("#map")
  end

  def latitude
    map.attribute("data-latitude").value.to_f
  end

  def longitude
    map.attribute("data-longitude").value.to_f
  end

  def address
    current_document.css("div.mapaddress").text
  end
end
