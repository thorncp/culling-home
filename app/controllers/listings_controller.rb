require "listing_emailer"

class ListingsController < ApplicationController
  def index
    @pending_listings = current_user.
      listings.
      pending.
      for_settings(current_user.settings).
      order_by_price_and_transit_time

    @interested_listings = current_user.
      listings.
      interested.
      order_by_price_and_transit_time
  end

  def update
    listing = Listing.find(params[:id])
    if listing.update(listing_params)
      if params[:email]
        redirect_to ListingEmailer.new(listing).mailto
      else
        redirect_to listings_path, notice: "Listing updated."
      end
    else
      flash[:error] = "Listing not updated."
      redirect_to listings_path
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:are_interested, :has_contacted)
  end
end
