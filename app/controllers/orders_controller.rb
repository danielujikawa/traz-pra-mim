class OrdersController < ApplicationController
  def show
    # @order = Order.find(params[:id])
  end

  def create
    @route = Route.find(params[:route_id])
    @order = Order.new
    @order.route = @route
    @order.user = User.first
    @order.save!
      # if current_user
      #   redirect_to order_show_path
      # else
      #   redirect_to user_session
      # end
  end
end
