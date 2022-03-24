class OrdersController < ApplicationController
  
  def create 
    product = Product.find_by(id: params[:product_id])
    calculate_sub = params[:quantity] * product.price
    tax = product.price * 0.09 * params[:quantity].to_i
    total = calculate_sub.to_i + tax.to_i
    
    order = Order.new(
        product_id: params[:product_id],
        user_id: current_user.id,
        subtotal: calculate_sub,
        quantity: params[:quantity],
        tax: tax,
        total: total
      )
    order.save 
    if order.user_id == current_user.id
      render json: order
    else 
      render json: "nope"
    end 
  end 

  def show 
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    if order.user_id == current_user.id
      render json: {
      order: order.as_json
      }
    else 
      render json: {
      message: "nope!"
      }
    end 
  end 

  def index 
    show_orders = []
    orders = Order.all
    orders.each do |order|
      if order.user_id == current_user.id
        show_orders << order
      end 
    end 
    render json: {
      orders: show_orders
    }
  end 

end
