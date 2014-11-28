require "craigslist_index_row_parser"

class CraigslistIndexParser
  attr_reader :search

  def initialize(search)
    @search = search
  end

  def listings
    rows.map do |row|
      CraigslistIndexRowParser.new(row).attributes
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
