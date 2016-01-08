module ListingsHelper
  def tr_class_for_listing(listing)
    if listing.unlisted
      "danger"
    elsif listing.has_contacted
      "info"
    end
  end

  def maybe(value)
    value || "-"
  end

  def walk_score_info(listing)
    walk = maybe(listing.walk_score)
    transit = maybe(listing.transit_score)
    bike = maybe(listing.bike_score)

    "#{walk} / #{transit} / #{bike}"
  end

  def crime_rating_info(listing)
    personal = maybe(listing.personal_crime_grade)
    property = maybe(listing.property_crime_grade)

    "#{personal} / #{property}"
  end
end
