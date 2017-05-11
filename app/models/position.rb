class Position < ApplicationRecord
  belongs_to :inspector
  belongs_to :role
end
