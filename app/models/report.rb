class Report < ApplicationRecord
  belongs_to :inspector, dependent: :destroy
  belongs_to :organization, dependent: :destroy
end
