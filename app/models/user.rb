class User < ApplicationRecord

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true, length: { in: 4..20 }

  has_secure_password

  has_many :rental_properties
  
  has_many :tenants, through: :rental_properties
  has_many :repairs, through: :rental_properties
  has_many :payments, through: :rental_properties
end
