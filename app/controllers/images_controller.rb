class ImagesController < ApplicationController

  def index
    images = Image.all 
    render json: {
      supplier: images 
    }
  end

  def show
    id = params[:id]
    image = Image.find_by(id: id )
    render json: {
      image: image
    }
  end

  def create 
    image = Image.new(url: params[:url], product_id: params[:product_id])
    if image.save
    render json: image
    else 
    render json: {
      errors: image.errors.full_messages
    }
    end 

  end 
end
