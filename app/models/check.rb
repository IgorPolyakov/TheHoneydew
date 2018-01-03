# frozen_string_literal: true

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
  end
  scope :sorted, -> { order(updated_at: :desc) }
  belongs_to :inspector
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
  validates :amount, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 999999999, only_integer: true }
  validate :check_start_less_than_check_finish, :check_finish_more_than_check_start, :check_finish_less_than_check_remark_destroy

  private

  def check_start_less_than_check_finish
    errors.add(:check_start, 'check start less than check finish') unless
      check_start < check_finish
  end

  def check_finish_more_than_check_start
    errors.add(:check_finish, 'check finish more than check start') unless
      check_start < check_finish
  end

  def check_finish_less_than_check_remark_destroy
    errors.add(:check_remark_destroy, 'check finish less than check_remark_destroy') unless
      check_finish < check_remark_destroy
  end

  def self.category
    [
      I18n.t(:performance),
      I18n.t(:preservation_and_use_of_property),
      I18n.t(:state_municipal_services),
      I18n.t(:contract_system),
      I18n.t(:anti_corruption),
      I18n.t(:for_calls_inappropriate_use_of_budgetary_funds),
      I18n.t(:challenging_the_actions_of_officials),
      I18n.t(:others)
    ]
  end

  def self.violation
    [
      I18n.t(:labor_legislation),
      I18n.t(:legislation_on_state_and_municipal_services),
      I18n.t(:legislation_on_the_contract_system),
      I18n.t(:budget_legislation),
      I18n.t(:departmental_legislation),
      I18n.t(:others)
    ]
  end

  def self.response_measure
    [
      I18n.t(:determination_of_contracts),
      I18n.t(:disciplinary_action),
      I18n.t(:repayment_of_funds),
      I18n.t(:procuracy),
      I18n.t(:eogv),
      I18n.t(:control_committee),
      I18n.t(:false_facts),
      I18n.t(:others)
    ]
  end

  def self.direction_status
    [
      I18n.t(:for_information),
      I18n.t(:for_accept),
      I18n.t(:for_removal)
    ]
  end
end
