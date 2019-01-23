class Restaurant < ApplicationRecord
	has_and_belongs_to_many :dishes
	geocoded_by :address
	after_validation :geocode
end
