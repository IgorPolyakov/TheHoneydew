# frozen_string_literal: true

# model describe all check in ai system
class Check < ApplicationRecord
  belongs_to :inspector
  # belongs_to :user
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :reasons
  has_and_belongs_to_many :violations
  has_and_belongs_to_many :response_measures
  has_and_belongs_to_many :direction_statuses
  validates :amount, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 999_999_999, only_integer: true }
  validate :check_start_less_than_check_finish, :check_finish_more_than_check_start, :check_finish_less_than_check_remark_destroy

  def status
    return 'secondary' if under_control?

    if check_remark_destroy > Time.zone.now.to_date && check_remark_destroy < (Time.zone.now.to_date - 1.week)
      'warning'
    elsif check_remark_destroy > (Time.zone.now.to_date - 1.week)
      'success'
    else
      'danger'
    end
  end

  private

  def check_start_less_than_check_finish
    errors.add(:check_start, 'check start less than check finish') unless check_start < check_finish
  end

  def check_finish_more_than_check_start
    errors.add(:check_finish, 'check finish more than check start') unless check_start < check_finish
  end

  def check_finish_less_than_check_remark_destroy
    errors.add(:check_remark_destroy, 'check finish less than check_remark_destroy') unless check_finish < check_remark_destroy
  end

  def under_control?
    control
  end
end
