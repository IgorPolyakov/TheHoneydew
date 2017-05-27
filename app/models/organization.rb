class Organization < ApplicationRecord
  validates :first_name, :last_name, :position, :company_name, :middle_name, presence: true
  has_many :reports, dependent: :destroy
end
