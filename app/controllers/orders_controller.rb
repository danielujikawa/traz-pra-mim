class OrdersController < ApplicationController
  def show
    # @order = Order.find(params[:id])
  end

  def create
    @route = Route.find()
    @order = Order.new
    @order.route = @route
    @order.user = current_user
    @order.save!
    redirect_to order_show_path
  end
end
