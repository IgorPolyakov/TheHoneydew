# frozen_string_literal: true

require 'ffaker'

FactoryBot.define do
  # factory :random_person do
  #   first_name FFaker::Name.first_name
  #   last_name FFaker::Name.last_name
  #   middle_name FFaker::Name.first_name
  # end
  factory :person_john do
    first_name 'John'
    last_name 'Faker'
    middle_name 'Antuanovich'
  end
end
