class Payment < ApplicationRecord
    belongs_to :rental_property
    has_many :tentants, through: :rental_properties
end
