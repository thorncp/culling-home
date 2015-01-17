require "craigslist_index_row_parser"
require "net/http"
require "uri"

class CraigslistIndexParser
  attr_reader :search, :base_url

  def initialize(search)
    @search = search
    uri = URI.parse(search.url)
    @base_url = "#{uri.scheme}://#{uri.host}"
  end

  def listings
    rows.map do |row|
      CraigslistIndexRowParser.new(row, base_url).attributes
    end
  end

  private

  def rows
    current_document.css(".row")
  end

  def current_document
    Nokogiri::XML(Net::HTTP.get(URI(search.url)))
  end
end
