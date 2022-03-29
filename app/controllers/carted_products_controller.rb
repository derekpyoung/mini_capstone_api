class CartedProductsController < ApplicationController
  
  def index
    cps = Carted_products.where({status: "carted", user_id: current_user.id })
    render json: cps.as_json
  end

  def create
    carted = CartedProduct.new(
      user_id:  current_user.id,
      product_id:  params[:product_id],
      quantity:  params[:quantity],
      status: "carted"
    )
    carted.save
    render json: (
      carted.as_json
    )
  end

  def destroy
    carted = CartedProduct.find_by(id: params[:id])
    carted.destroy
    render json: {message: "removed from shopping cart"}
  end

end
