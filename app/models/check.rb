class Check < ApplicationRecord
  # TODO : Refactoring this
  before_save do
    reason.gsub!(/[\[\]\"]/, '') if attribute_present?('reason')
    category.gsub!(/[\[\]\"]/, '') if attribute_present?('category')
    violation.gsub!(/[\[\]\"]/, '') if attribute_present?('violation')
    response_measure.gsub!(/[\[\]\"]/, '') if attribute_present?('response_measure')
    direction.gsub!(/[\[\]\"]/, '') if attribute_present?('direction')
  end
  belongs_to :inspector, dependent: :destroy
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
end
