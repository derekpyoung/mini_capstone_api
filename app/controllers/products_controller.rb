class ProductsController < ApplicationController

  def show
    id = params[:id].to_i
    @product = Product.find_by(id: id)
    render template: "products/show"
    
  end 

  def index 
    @products = Product.all 
    render template: "products/index"
  end 

  def create 
    product = Product.new(name: params[:input_name], price: params[:input_price], img_url: params[:input_url], description: params[:input_description])
    product.save
    render template: "products/show"
  end 

  def destroy 
    id = params[:id]
    product = Product.find_by(id: id)
    render json: product.as_json
    product.delete
  end 

  def update 
    id = params[:id]
    product = Product.find_by(id: id)
    product.name = params[:new_name] || product.name
    product.price = params[:new_price] || product.price
    product.img_url = params[:new_url] || product.img_url
    product.description = params[:new_description] || product.description
    render json: product.json 
    product.save 
    
    
  end 

  
end
