class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products


  def products
    category_products.each do |cat_pro|
      p cat_pro
    end 
  end 
end
