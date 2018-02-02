# frozen_string_literal: true

Organization.destroy_all
Person.destroy_all
Report.destroy_all
Check.destroy_all
Inspector.destroy_all
User.destroy_all

User.create(login: 'keva', password: 'KeV@1SLifE', is_admin: true)
User.create(login: 'user', password: 'Mu$t@Ng_V0')


Category.create(name: 'performance')
Category.create(name: 'preservation_and_use_of_property')
Category.create(name: 'state_municipal_services')
Category.create(name: 'contract_system')
Category.create(name: 'anti_corruption')
Category.create(name: 'for_calls_inappropriate_use_of_budgetary_funds')
Category.create(name: 'challenging_the_actions_of_officials')
Category.create(name: 'others')

Violation.create(name: 'labor_legislation')
Violation.create(name: 'legislation_on_state_and_municipal_services')
Violation.create(name: 'legislation_on_the_contract_system')
Violation.create(name: 'budget_legislation')
Violation.create(name: 'departmental_legislation')
Violation.create(name: 'others')

ResponseMeasure.create(name: 'determination_of_contracts')
ResponseMeasure.create(name: 'disciplinary_action')
ResponseMeasure.create(name: 'repayment_of_funds')
ResponseMeasure.create(name: 'procuracy')
ResponseMeasure.create(name: 'eogv')
ResponseMeasure.create(name: 'control_committee')
ResponseMeasure.create(name: 'false_facts')
ResponseMeasure.create(name: 'others')

DirectionStatus.create(name: 'for_information')
DirectionStatus.create(name: 'for_accept')
DirectionStatus.create(name: 'for_removal')

Reason.create(name: 'the_qa_and_sar_work_plan')
Reason.create(name: 'gto_commission')
Reason.create(name: 'zgto_commission')
Reason.create(name: 'appeal_of_applicant_organization')
Reason.create(name: 'other')
