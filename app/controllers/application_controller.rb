class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_cart
    unless session[:cart_id]
      order = Order.new
      order.save(false)
      session[:cart_id] = order.id
    end
    cart = Order.find(session[:cart_id])    
    cart.update_attribute(:user_id, current_user.id) if current_user
    return cart
  end
  helper_method :current_cart
  
  def clear_cart!
    session[:cart_id] = nil
  end
  
  def only_admin
    unless current_user && current_user.admin?
      redirect_to new_session_path(:user), :notice => "You must be admin to access this page" 
    end
  end
end
