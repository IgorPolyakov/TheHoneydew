# frozen_string_literal: true

FactoryBot.define do
  factory :inspector_alex, class: Inspector do
    first_name 'Alex'
    last_name 'Mirror'
    middle_name 'Antua'
    position 'Worker'
  end
end
