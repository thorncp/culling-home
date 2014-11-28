class ListingsController < ApplicationController
  def index
    @pending_listings = Listing.pending.bart_max_distance(Setting.bart_max_distance)
    @interested_listings = Listing.interested
  end

  def update
    listing = Listing.find(params[:id])
    if listing.update(listing_params)
      redirect_to listings_path, notice: "Listing updated."
    else
      flash[:error] = "Listing not updated."
      redirect_to listings_path
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:are_interested)
  end
end
