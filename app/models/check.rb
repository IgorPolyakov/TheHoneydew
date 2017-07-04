class Check < ApplicationRecord
  # TODO : Refactoring this
  before_save do
    reason.gsub!(/[\[\]\"]/, '') if attribute_present?('reason')
    category.gsub!(/[\[\]\"]/, '') if attribute_present?('category')
    violation.gsub!(/[\[\]\"]/, '') if attribute_present?('violation')
    response_measure.gsub!(/[\[\]\"]/, '') if attribute_present?('response_measure')
    direction_status.gsub!(/[\[\]\"]/, '') if attribute_present?('direction_status')
  end
  belongs_to :inspector#, dependent: :destroy удаляет все проверки с этим проверяющим
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
  validates :amount, numericality: { greater_than_or_equal_to: 1, only_integer: true }
end
