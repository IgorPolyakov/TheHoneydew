class Inspector < ApplicationRecord
	has_one :supervisor
	has_one :visor
	validates :first_name, :last_name, :position, :middle_name, presence: true
end
