class Organization < ApplicationRecord
	# has_and_belongs_to_many :checks
	# has_many :reports
	validates :first_name, :last_name, :position, :company_name, :middle_name, presence: true
end
