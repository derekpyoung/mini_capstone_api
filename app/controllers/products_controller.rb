class ProductsController < ApplicationController
  # before_action :authenticate_admin, only: [:update, :create, :destroy]
  # belongs_to :orders
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
    product = Product.new(name: params[:name], 
                          price: params[:price],
                          description: params[:description],
                          quantity: params[:quantity], 
                          supplier_id: params[:supplier_id])
                          p params[:images]
    if product.save
      
      params[:images].each do |image|
      image = Image.new(url: image, product_id: product.id)
      end 
      image.save  
      render json: product.as_json
      
      
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
     end 
   
  end 

  def destroy 
    id = params[:id]
    product = Product.find_by(id: id)
    product.delete
    render json: "product removed."
 
  end 

  def update 
    id = params[:id]
    product = Product.find_by(id: id)
    product.name = params[:new_name]
    product.price = params[:new_price] 
    product.description = params[:new_description]

    
    if product.save 
      render json: product.as_json 
    else 
      render json: {
        error: product.errors.full_messages
      }
    end 
    
  end 

  
end
