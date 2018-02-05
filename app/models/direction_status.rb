# frozen_string_literal: true

# DirectionStatus class belong to Check
class DirectionStatus < ApplicationRecord
  has_and_belongs_to_many :checks
  validates :name, uniqueness: true
end
