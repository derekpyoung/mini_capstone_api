class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all 
    render json: {
      supplier: suppliers 
    }
  end

  def show
    id = params[:id]
    supplier = Supplier.find_by(id: id )
    render json: {
      supplier: supplier
    }
    
  end
end
