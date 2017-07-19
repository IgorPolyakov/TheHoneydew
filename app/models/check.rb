# model describe all check in ai system
class Check < ApplicationRecord
  def remove_quote(obj, str)
    obj.gsub!(/[\[\]\"]/, '') if attribute_present?(str)
  end
  # TODO : Refactoring this
  before_save do
    remove_quote(reason, 'reason')
    remove_quote(category, 'category')
    remove_quote(violation, 'violation')
    remove_quote(response_measure, 'response_measure')
    remove_quote(direction_status, 'direction_status')
    # reason.gsub!(/[\[\]\"]/, '') if attribute_present?('reason')
    # category.gsub!(/[\[\]\"]/, '') if attribute_present?('category')
    # violation.gsub!(/[\[\]\"]/, '') if attribute_present?('violation')
    # response_measure.gsub!(/[\[\]\"]/, '') if attribute_present?('response_measure')
    # direction_status.gsub!(/[\[\]\"]/, '') if attribute_present?('direction_status')
  end
  scope :sorted, -> {order(updated_at: :desc)}
  belongs_to :inspector
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
  validates :amount, numericality: { greater_than_or_equal_to: 1, only_integer: true }
end
