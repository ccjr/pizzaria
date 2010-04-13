class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_cart
    unless session[:cart_id]
      order = Order.new
      order.save(false)
      session[:cart_id] = order.id
    end
    Order.find(session[:cart_id])
  end
  helper_method :current_cart
  
  def only_admin
    unless current_user && current_user.admin?
      redirect_to new_session_path(:user), :notice => "You must be admin to access this page" 
    end
  end
end
