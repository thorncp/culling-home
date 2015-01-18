module ListingsHelper
  def tr_class_for_listing(listing)
    if listing.unlisted
      "danger"
    elsif listing.has_contacted
      "info"
    end
  end
end
