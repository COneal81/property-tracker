class Tentant < ApplicationRecord
    belongs_to :rental_property
    has_many :payments, through: :rental_properties
end
