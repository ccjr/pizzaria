class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_cart
    session[:current_cart] ||= Order.new
  end
  helper_method :current_cart
  
end
