class RentalProperty < ApplicationRecord
    belongs_to :user
    has_many :repairs
    has_many :tenants
    has_many :payments, through: :tenants
end
