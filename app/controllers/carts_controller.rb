class CartsController < ApplicationController
  before_filter :load_objects
  
  def add
    @cart.increment_product(@product)
    render :template => "carts/update_cart.rjs"
  end
  
  def remove
    @cart.decrement_product(@product)
    render :template => "carts/update_cart.rjs"
  end
  
  private
    def load_objects
      @cart = current_cart
      @product = Product.find(params[:product_id]) if params[:product_id]
    end
end
