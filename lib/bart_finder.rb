class BartFinder
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def closest
    BartStation.all.min_by do |station|
      miles_apart(listing, station)
    end
  end

  private

  def stations
    BartStation.all
  end

  def miles_apart(listing, station)
    GeoDistance::Haversine.distance(listing.latitude,
                                    listing.longitude,
                                    station.latitude,
                                    station.longitude).miles.number
  end
end
