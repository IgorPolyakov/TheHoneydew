class Role < ApplicationRecord
  has_many :positions
  has_many :inspectors, through: :positions
end
