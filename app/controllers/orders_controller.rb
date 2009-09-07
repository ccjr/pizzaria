class OrdersController < ApplicationController
  before_filter :login_and_return_to_cart
  
  def show
    @order = Order.find params[:id]
  end
  
  def create
    @order = current_cart
    @order.update_attributes(params[:order])
    current_user.orders << @order
    session[:cart] = nil
    flash[:notice] = "Thank you for your order."
    redirect_to @order
  end
  
  private
    def login_and_return_to_cart
      unless logged_in?
        session[:return_to] = cart_path
        redirect_to login_path and return 
      end      
    end
end
