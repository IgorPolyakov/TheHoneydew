# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  some_person = Person.new(first_name: 'nil', last_name: 'nil', middle_name: 'nil')
  some_inspector = Organization.new(person: some_person, company_name: 'fff', position: 'lll')
  it 'is not valid without company_name' do
    expect(some_inspector).to be_valid
  end
  it 'is not valid without position' do
    expect(some_inspector).to be_valid
  end
end
