class Inspector < ApplicationRecord
  validates :first_name, :last_name, :position, :middle_name, presence: true
  has_many :checks#, dependent: :destroy
  has_many :reports#, dependent: :destroy
end
