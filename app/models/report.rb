class Report < ApplicationRecord
  belongs_to :inspector, dependent: :destroy
  belongs_to :report, dependent: :destroy
end
