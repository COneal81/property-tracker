class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , , :timeoutable, :trackable  , 
  

  has_many :rental_properties
  
  has_many :tenants, through: :rental_properties
  has_many :repairs, through: :rental_properties
  has_many :payments, through: :rental_properties
end
