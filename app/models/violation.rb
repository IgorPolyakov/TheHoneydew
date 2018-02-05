# frozen_string_literal: true

# Violation class belong to Check
class Violation < ApplicationRecord
  has_and_belongs_to_many :checks
  validates :name, uniqueness: true
end
