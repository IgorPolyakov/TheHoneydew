class Inspector < ApplicationRecord
	# belongs_to :supervisor
	# belongs_to :visor
	has_many :positions
	has_many :roles, through: :positions
	validates :first_name, :last_name, :position, :middle_name, presence: true
end
