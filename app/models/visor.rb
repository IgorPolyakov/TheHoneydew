class Visor < ApplicationRecord
	has_one :inspector
	has_many :checks
	has_many :reports
end
