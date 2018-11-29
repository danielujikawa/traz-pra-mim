class RoutesController < ApplicationController

  def index
    if params[:origin]
      @routes = Route.search()
    else
      @routes = Route.all
    end
  end

  def home
  end

  def show
    @route = Route.find(params[:id])
    # @review = Review.where(user: @route.user)

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
    params.require(:route).permit(:start_date_time, :end_date_time, :origin, :destination, :capacity, :price, :comment)
  end
end
