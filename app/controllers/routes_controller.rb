class RoutesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    @route.update(routes_params)
    redirect_to rouste_path(@route)
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    redirect_to routes_path
  end

  private

  def routes_params
    params.require(:route).permit(:origin, :destination, :capacity, :start_date_Time, :end_date_time)
  end
end
