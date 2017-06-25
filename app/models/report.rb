class Report < ApplicationRecord
  before_save do
    self.result.gsub!(/[\[\]\"]/, '') if attribute_present?("result")
    self.reason.gsub!(/[\[\]\"]/, '') if attribute_present?("reason")
  end
  belongs_to :inspector, dependent: :destroy
  belongs_to :organization, dependent: :destroy
end
