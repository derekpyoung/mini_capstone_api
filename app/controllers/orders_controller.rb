class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |item|
      calculated_subtotal += item.product.price * item.quantity
      calculated_tax += item.product.tax * item.quantity
    end
    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax
    )
    order.save
    carted_products.each do |item|
      item.update(
        status: "purchased",
        order_id: order.id
      )
    end
    render json: order
  end
  

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render template: "orders/show"
    else
      render json: {
        order: "CANT show ORDER"
      }
    end
  end

  def index 
    @orders = current_user.orders
    render template: "orders/index"
  end 

end
