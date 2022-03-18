class Supplier < ApplicationRecord
  has_many :products
 
  # def readable_updated_at
  #   updated_at.strftime("%A, %d %b %Y %l:%M %p")
  # end 

  # def readable_created_at
  #   created_at.strftime("%A, %d %b %Y %l:%M %p")
  # end 

end
