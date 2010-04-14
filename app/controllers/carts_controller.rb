class CartsController < ApplicationController
  before_filter :authenticate_user!, :only => :checkout
  
  def confirm
    order = current_cart
    order.update_attributes(params[:order])
    clear_cart!
    redirect_to order, :notice => "Your order is on the way!"
  end
end
