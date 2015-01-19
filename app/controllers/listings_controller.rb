require "listing_emailer"

class ListingsController < ApplicationController
  def index
    @pending_listings =
      Listing.pending.bart_max_distance(current_user.settings.bart_max_distance)
    @interested_listings = Listing.interested
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
