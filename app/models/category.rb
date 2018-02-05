# frozen_string_literal: true

# Category class belong to Check
class Category < ApplicationRecord
  has_and_belongs_to_many :checks
  validates :name, uniqueness: true
end
