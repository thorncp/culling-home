require "net/http"

class BartDirections
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def distance
    directions["route"]["distance"]
  end

  def directions
    JSON.parse(Net::HTTP.get(uri))
  end

  def from
    "#{listing.latitude},#{listing.longitude}"
  end

  def to
    "#{listing.bart_station.latitude},#{listing.bart_station.longitude}"
  end

  def map_quest_key
    ENV["MAP_QUEST_KEY"]
  end

  def uri
    # TODO: make this better
    URI("http://open.mapquestapi.com/directions/v2/route?key=#{map_quest_key}&ambiguities=ignore&from=#{from}&to=#{to}&outFormat=json&routeType=pedestrian")
  end
end
