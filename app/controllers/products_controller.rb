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
    @product = Product.new(name: params[:input_name], price: params[:input_price], description: params[:input_description])
    if @product.save
    render template: "products/show"
    else 
    render json: {
      errors: @product.errors.full_messages
    }
    end 

  end 

  def destroy 
    id = params[:id]
    @product = Product.find_by(id: id)
    render json: @product.as_json
    @product.delete
  end 

  def update 
    id = params[:id]
    @product = Product.find_by(id: id)
    @product.name = params[:new_name] || @product.name
    @product.price = params[:new_price] || @product.price
    @product.description = params[:new_description] || @product.description
    
    if @product.save 
      render json: @product.as_json 
    else 
      render json: {
        error: @product.errors.full_messages
      }
    end 
    
  end 

  
end
