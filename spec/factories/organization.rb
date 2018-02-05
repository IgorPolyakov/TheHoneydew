
# frozen_string_literal: true

FactoryBot.define do
  factory :random_company, class: Organization do
    company_name FFaker::Company.name
    position FFaker::Company.bs
  end
end
