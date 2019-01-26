# frozen_string_literal: true

class Organization < ApplicationRecord
  validates :position, :name, presence: true
  has_many :reports # , dependent: :destroy
  has_and_belongs_to_many :checks
  belongs_to :person
  # belongs_to :user

  def self.full_list
    all.map do |organization|
      [organization.name, organization.id]
    end
  end
end
