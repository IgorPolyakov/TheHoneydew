class Report < ApplicationRecord
    belongs_to :visor
    belongs_to :supervisor
    belongs_to :organization
end
