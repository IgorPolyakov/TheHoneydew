class Inspector < ApplicationRecord
    has_many :reports
    has_many :checks

end
