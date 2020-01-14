class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , , :timeoutable, :trackable  , 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, :lockable

  has_many :rental_properties
  
  has_many :tentants, through: :rental_properties
  has_many :repairs, through: :rental_properties
  has_many :payments, through: :rental_properties
end
