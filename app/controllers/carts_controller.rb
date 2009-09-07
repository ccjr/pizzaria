class CartsController < ApplicationController
  before_filter :load_objects
  
  def add
    @cart.add_product_to_order(@product)
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js   { render :template => "carts/update_cart.rjs" }
    end
  end
  
  def remove
    @cart.remove_product_from_order(@product)
    render :template => "carts/update_cart.rjs"
  end
  
  private
    def load_objects
      @cart = current_cart
      @product = Product.find(params[:product_id]) if params[:product_id]
    end
end
