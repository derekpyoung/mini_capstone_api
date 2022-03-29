class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  # has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  # has_many :orders, through: :carted_products
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, length: { in: 10..500}, allow_blank: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }


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


