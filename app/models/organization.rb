class Organization < ApplicationRecord
  validates :position, :company_name, presence: true
  has_many :reports # , dependent: :destroy
  has_and_belongs_to_many :checks
  belongs_to :person
end
