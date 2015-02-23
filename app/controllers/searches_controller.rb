class SearchesController < ApplicationController
  before_action :set_search, only: [:edit, :update, :destroy]

  def index
    @searches = current_user.searches
  end

  def new
    @search = current_user.searches.build
  end

  def edit
  end

  def create
    @search = current_user.searches.build(search_params)

    if @search.save
      redirect_to searches_path, notice: "New search added."
    else
      render :new
    end
  end

  def update
    if @search.update(search_params)
      redirect_to searches_path, notice: "Search updated."
    else
      render :edit
    end
  end

  def destroy
    @search.destroy
    redirect_to searches_url, notice: "Search removed."
  end

  private

  def set_search
    @search = current_user.searches.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:description, :url, :enabled)
  end
end
