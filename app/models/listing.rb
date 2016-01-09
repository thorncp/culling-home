class Listing < ActiveRecord::Base
  belongs_to :bart_station
  belongs_to :user

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def self.interested
    where(are_interested: true)
  end

  def self.pending
    where(are_interested: nil)
  end

  def self.for_settings(user_settings)
    transit_max_time(user_settings.transit_max_time)
      .walk_score_minimum(user_settings.walk_score_minimum)
      .transit_score_minimum(user_settings.transit_score_minimum)
      .bike_score_minimum(user_settings.transit_score_minimum)
      .personal_crime_grade_minimum(user_settings.personal_crime_grade_minimum)
      .property_crime_grade_minimum(user_settings.property_crime_grade_minimum)
  end

  def self.order_by_price_and_transit_time
    order(price: :asc, transit_travel_in_minutes: :asc)
  end

  def self.bart_max_distance(distance)
    where("bart_distance is null OR bart_distance <= ?", distance)
  end

  def self.transit_max_time(minutes)
    where(
      "transit_travel_in_minutes is null OR transit_travel_in_minutes <= ?",
      minutes
    )
  end

  def self.walk_score_minimum(minutes)
    score_minimum(:walk, minutes)
  end

  def self.transit_score_minimum(minutes)
    score_minimum(:transit, minutes)
  end

  def self.bike_score_minimum(minutes)
    score_minimum(:bike, minutes)
  end

  def self.personal_crime_grade_minimum(grade)
    grade_minimum(:personal, grade)
  end

  def self.property_crime_grade_minimum(grade)
    grade_minimum(:property, grade)
  end

  private

  def self.score_minimum(type, value)
    where("#{type}_score is null OR #{type}_score >= ?", value)
  end

  def self.grade_minimum(type, grade)
    key = "#{type}_crime_grade"
    accepted_grades = [grade] + higher_grades(grade)
    query_formatted_grades = accepted_grades.map { |g| "'#{g}'" }.join(', ')
    # SQL-injection vulnerability!!!
    # Not sure of a good way to generate this query
    where("#{key} is null OR #{key} IN (#{query_formatted_grades})")
  end

  def self.higher_grades(grade)
    case grade
    when "A"
      []
    when "B"
      ["A"]
    when "C"
      ["A", "B"]
    when "D"
      ["A", "B", "C"]
    when "F"
      ["A", "B", "C", "D"]
    end
  end
end
