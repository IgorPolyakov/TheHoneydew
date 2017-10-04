# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  some_person = Person.new(first_name: 'nil', last_name: 'nil', middle_name: 'nil')
  it 'is not valid without first_name' do
    expect(some_person).to be_valid
  end
  it 'is not valid without last_name' do
    expect(some_person).to be_valid
  end
  it 'is not valid without middle_name' do
    expect(some_person).to be_valid
  end
end
