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
  scope :sorted, -> {order(updated_at: :desc)}
  belongs_to :inspector
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :people
  validates :amount, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  validate :check_start_less_than_check_finish, :check_finish_more_than_check_start, :check_finish_less_than_check_remark_destroy

  private
  def check_start_less_than_check_finish
    errors.add(:check_start, "check start less than check finish") unless
      check_start < check_finish
  end
  def check_finish_more_than_check_start
    errors.add(:check_finish, "check finish more than check start") unless
      check_start < check_finish
  end
  def check_finish_less_than_check_remark_destroy
    errors.add(:check_remark_destroy, "check finish less than check_remark_destroy") unless
      check_finish < check_remark_destroy
  end
end
