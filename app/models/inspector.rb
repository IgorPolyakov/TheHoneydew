class Inspector < ApplicationRecord
	validates :first_name, :last_name, :position, :middle_name, presence: true
	has_many :checks
	has_many :reports
end
