class RentalProperty < ApplicationRecord
    belongs_to :user
    has_many :tentants
    has_many :repairs
    has_many :payments, through: :tentants
end
