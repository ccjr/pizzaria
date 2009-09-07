class OrdersController < ApplicationController
  before_filter :login_required
  
  def show
    @order = Order.find params[:id]
  end
  
  def create
    @order = current_cart
    current_user.orders << @order
    session[:cart] = nil
    redirect_to @order
  end
end
