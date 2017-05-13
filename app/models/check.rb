class Check < ApplicationRecord
	# has_and_belongs_to_many :people
	# has_and_belongs_to_many :organizations
	# belongs_to :visor
	# belongs_to :supervisor
  has_many :check_positions
  has_many :positions, through: :check_positions
end
