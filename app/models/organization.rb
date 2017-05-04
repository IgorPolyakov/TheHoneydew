class Organization < ApplicationRecord
	has_and_belongs_to_many :checks
	has_many :reports
end
