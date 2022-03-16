class Product < ApplicationRecord

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



