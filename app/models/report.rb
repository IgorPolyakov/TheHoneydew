class Report < ApplicationRecord
  belongs_to :inspector, dependent: :destroy
end
