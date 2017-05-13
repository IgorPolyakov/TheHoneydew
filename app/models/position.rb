class Position < ApplicationRecord
  belongs_to :inspector
  belongs_to :role
  has_many :check_positions
  has_many :checks, through: :check_positions
end
