class ProductsController < ApplicationController

  def products 
    render json: Product.all.to_json
  end 

  def one_product
    render json: Product.first.to_json 
  end 

end
