# frozen_string_literal: true

class Inspector < ApplicationRecord
  validates :first_name, :last_name, :position, :middle_name, presence: true
  has_many :checks # , dependent: :destroy
  has_many :reports # , dependent: :destroy
  def full_name
    "#{last_name} #{first_name} - #{position}"
  end

  def self.full_list
    all.map do |inspector|
      ["#{inspector.last_name} #{inspector.first_name} - #{inspector.position}", inspector.id]
    end
  end
end
