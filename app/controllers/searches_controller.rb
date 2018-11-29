class SearchesController < ApplicationController

  def new
    @search = Search.new
    @user = current_user
  end

  def create
    @search = Search.new(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

private

  def search_params
    params.require(:search).permit(:type, :origin, :destination, :end_date_time)

end
