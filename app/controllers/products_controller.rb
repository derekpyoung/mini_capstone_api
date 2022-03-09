class ProductsController < ApplicationController

  def products 
    render json: Product.all.to_json
    p Product.all.to_json 
  end 

  def one_product
    render json: Product.last.to_json 
    p Product.last.to_json 
  end 

end
