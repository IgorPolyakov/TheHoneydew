class Inspector < ApplicationRecord
	validates :first_name, :last_name, :position, :middle_name, presence: true
end
