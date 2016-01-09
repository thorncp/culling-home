class ListingEmailer
  attr_reader :listing

  def initialize(listing)
    @listing = listing
  end

  def mailto
    "mailto:#{email_address}?subject=#{email_subject}&body=#{email_body}"
  end

  private

  def email_address
    listing.email
  end

  def email_subject
    listing.title
  end

  def email_body
    [
      listing.user_settings.email_body,
      listing.href
    ].join("\n").gsub("\n", "%0D%0A")
  end
end
