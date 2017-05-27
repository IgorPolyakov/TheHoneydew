class Organization < ApplicationRecord
  validates :first_name, :last_name, :position, :company_name, :middle_name, presence: true
  has_many :reports, dependent: :destroy
  has_and_belongs_to_many :checks
end
