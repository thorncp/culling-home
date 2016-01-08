class TransitInformation
  class DirectionsError < StandardError; end

  OFFICE_ADDRESS = "85 2nd St, San Francisco, CA".freeze

  attr_reader :address

  def initialize(address)
    @address = address
  end

  def time_in_minutes
    directions.drive_time_in_minutes
  end

  def public_url
    directions.public_url
  end

  private

  def directions
    @directions ||= query_for_directions

    if @directions.status != "OK"
      fail GoogleDirectionsError, @directions.status
    end

    @directions
  end

  def query_for_directions
    opts = {
      key: ENV.fetch("GOOGLE_API_SERVER_KEY"),
      mode: "transit",
    }

    GoogleDirections.new(address, OFFICE_ADDRESS, opts)
  end
end
