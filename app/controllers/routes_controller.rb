class RoutesController < ApplicationController
  def index
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @user = current_user
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    @route.user = current_user
    if @route.save
      redirect_to routes_path(@route)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def route_params
    params.require(:route).permit(:start_date_time, :end_date_time, :origin, :destination, :capacity)
  end
end
