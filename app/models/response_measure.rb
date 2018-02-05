# frozen_string_literal: true

# ResponseMeasure class belong to Check
class ResponseMeasure < ApplicationRecord
  has_and_belongs_to_many :checks
  validates :name, uniqueness: true
end
