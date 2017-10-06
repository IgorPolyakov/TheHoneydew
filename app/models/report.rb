# frozen_string_literal: true

class Report < ApplicationRecord
  def remove_quote(obj, str)
    obj.gsub!(/[\[\]\"]/, '') if attribute_present?(str)
  end
  before_save do
    remove_quote(reason, 'reason')
    remove_quote(result, 'result')
  end
  belongs_to :inspector # , dependent: :destroy
  belongs_to :organization # , dependent: :destroy иначе удаляет больше одной записи
  def self.reason
    [
      I18n.t(:the_qa_and_sar_work_plan),
      I18n.t(:gto_commission),
      I18n.t(:zgto_commission),
      I18n.t(:appeal_of_applicant_organization),
      I18n.t(:other)
    ]
  end

  def self.result
    [
      I18n.t(:off_control),
      I18n.t(:move_to_inner_control)
    ]
  end
end
