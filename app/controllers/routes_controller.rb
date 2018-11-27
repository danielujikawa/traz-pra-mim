class RoutesController < ApplicationController
  def index
    @route = Route.all
  end

  def home
  end

  def search
    @origin = params[:origin]
    @destination = params[:destination]
    @end_date_time = params[:end_date_time]
    @route_search = Route.where(origin: '@origin')
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
      redirect_to user_route_path(current_user, @route)
    else
      render 'new'
    end
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    @route.update(route_params)
    redirect_to user_route_path(@route)
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    redirect_to routes_path
  end

  private

  def route_params
    params.require(:route).permit(:start_date_time, :end_date_time, :origin, :destination, :capacity)
  end
end
