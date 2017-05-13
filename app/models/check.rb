class Check < ApplicationRecord
  belongs_to :inspector, dependent: :destroy
end
