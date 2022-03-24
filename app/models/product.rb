class Product < ApplicationRecord
  has_many :category_products
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, inclusion: { in: 1..1000 }
  validates :description, presence: true, length: { minimum: 5 ,maximum: 500 }
  
  has_many :category_products
  belongs_to :supplier
  has_many :image

  def categories
    categories = []
    category_products.each do |cat_pro|
      p cat_pro 
    end 
  end 

  def readable_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p") 
  end
  
  def readable_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end 

  def is_discounted? 
    price < 6
  end 

  def tax 
    price * 0.09
  end
  
  def total 
    price + tax
  end 

end


