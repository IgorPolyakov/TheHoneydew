# frozen_string_literal: true

FactoryBot.define do
  factory :random_company, class: Organization do
    name { FFaker::Company.name }
    position { FFaker::Company.bs }
  end
end
