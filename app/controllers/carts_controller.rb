class CartsController < ApplicationController
  before_filter :load_cart
  def add
    @cart.items.build(:product_id => params[:product_id], :quantity => 1)
    redirect_to cart_path
  end
  
  def remove
    @cart.items.delete_at(params[:index].to_i)
    redirect_to cart_path
  end
  
  private
    def load_cart
      @cart = current_cart
    end
end
