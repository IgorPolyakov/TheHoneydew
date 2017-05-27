class Check < ApplicationRecord
  belongs_to :inspector, dependent: :destroy
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
end
