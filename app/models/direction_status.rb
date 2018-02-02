# frozen_string_literal: true

class DirectionStatus < ApplicationRecord
  has_and_belongs_to_many :checks
  validates :name, uniqueness: true
end
