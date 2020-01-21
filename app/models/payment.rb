class Payment < ApplicationRecord
    belongs_to :rental_property
    has_many :tenants, through: :rental_properties
end
