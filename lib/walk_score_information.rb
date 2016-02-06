require "open-uri"

class WalkScoreInformation
  WALKSCORE_BASE_URL = "https://www.walkscore.com/score/".freeze
  SCORE_IMAGE_REGEX = /badge\/(\w+)\/score\/(\d+)\.svg/

  def initialize(address)
    @url = "#{WALKSCORE_BASE_URL}#{CGI.escape(address)}"
  end

  def to_h
    {
      walk_score: scores_hash[:walk],
      transit_score: scores_hash[:transit],
      bike_score: scores_hash[:bike],
      personal_crime_grade: crime_hash[:personal],
      property_crime_grade: crime_hash[:property],
    }
  end

  private

  attr_reader :url

  def scores_hash
    @_scores_hash ||= scores_html.each_with_object({}) do |selection, result|
      img_src = selection.attributes["src"].value
      matches = SCORE_IMAGE_REGEX.match(img_src)

      result[matches[1].to_sym] = matches[2].to_i
    end
  end

  def scores_html
    document.css("#address-header .score-div .score-info-link img")
  end

  def crime_hash
    @crime_hash ||= crime_html.each_with_object({}) do |selection, result|
      rating = selection.text.strip.upcase

      # This is a little hacky but does the trick. Since the elements are in
      # order(personal, property) on the site, we can assume that if personal
      # was already added to the result, we're now dealing with the property
      type = :personal
      if result.key?(:personal)
        type = :property
      end

      result[type] = rating
    end
  end

  def crime_html
    document.css("#crime-grade .letter-grade")
  end

  def document
    @_document ||= Nokogiri::XML(open(url))
  end
end
