# frozen_string_literal: true

# Reason class belong to Check
class Reason < ApplicationRecord
  has_and_belongs_to_many :checks
  has_and_belongs_to_many :reports
  validates :name, uniqueness: true
end
