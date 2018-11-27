class RoutesController < ApplicationController
  def index
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:route).permit(:start_date_time, :end_date_time, :origin, :destination, :capacity)
  end
end
