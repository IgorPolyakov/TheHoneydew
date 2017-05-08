class Inspector < ApplicationRecord
	belongs_to :supervisor
	belongs_to :visor
	validates :first_name, :last_name, :position, :middle_name, presence: true
end
