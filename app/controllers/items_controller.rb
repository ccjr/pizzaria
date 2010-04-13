class ItemsController < ApplicationController
  def create
    item = current_cart.items.find_or_create_by_product_id(:product_id => params[:product_id])
    item.increment!(:quantity)
    render :template => 'items/update_cart.js.erb'
  end
    
  def destroy
    item = current_cart.items.find(params[:id])
    item.quantity > 1 ? item.decrement!(:quantity) : item.destroy
    render :template => 'items/update_cart.js.erb'
  end
end
