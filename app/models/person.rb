# frozen_string_literal: true

class Person < ApplicationRecord
  validates :first_name, :last_name, :middle_name, presence: true
  has_and_belongs_to_many :checks
  has_many :organizations
  def full_name
    "#{last_name} #{first_name} #{middle_name}"
  end
end
