# frozen_string_literal: true

class Result < ApplicationRecord
  has_and_belongs_to_many :reports
  validates :name, uniqueness: true
end
