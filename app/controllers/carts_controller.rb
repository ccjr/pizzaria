class CartsController < ApplicationController
  before_filter :load_objects
  
  def add
    @cart.increment_product(@product)
    render :template => "carts/update_cart.js.erb"
  end
  
  def remove
    @cart.decrement_product(@product)
    render :template => "carts/update_cart.js.erb"
  end
  
  private
    def load_objects
      @cart = current_cart
      @product = Product.find(params[:id]) if params[:id]
    end
end
