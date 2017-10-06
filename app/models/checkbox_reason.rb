# frozen_string_literal: true

# CheckboxReason
module CheckboxReason
  def self.reason
    [
      I18n.t(:the_qa_and_sar_work_plan),
      I18n.t(:gto_commission),
      I18n.t(:zgto_commission),
      I18n.t(:appeal_of_applicant_organization),
      I18n.t(:other)
    ]
  end
end
