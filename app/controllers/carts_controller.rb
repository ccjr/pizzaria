class CartsController < ApplicationController
  before_filter :authenticate_user!, :only => :checkout
  
  def confirm
    if current_cart.update_attributes(params[:order])
      redirect_to payment_cart_path
    else
      render :action => 'checkout'
    end
  end
  
  def process_payment
    order = current_cart
    if order.process_payment(params[:credit_card])
      clear_cart!
      redirect_to order, :notice => order.payment_message
    else
      flash.now[:alert] = "Unable to proecess payment"
      render :action => 'payment'
    end    
  end
end
