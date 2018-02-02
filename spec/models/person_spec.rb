# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  # some_person = Person.new(first_name: 'nil', last_name: 'nil', middle_name: 'nil')
  context 'random' do
    let(:person) { build(:person_john) }
    it 'ensures first name presence' do
      person.first_name = nil
      expect(person.save).to eq(false)
    end
    it 'ensures last name presence' do
      person.last_name = nil
      expect(person.save).to eq(false)
    end
    it 'ensures middle name presence' do
      person.middle_name = nil
      expect(person.save).to eq(false)
    end
  end
  context 'John' do
    let(:person) { create(:person_john) }
    it 'is show full name' do
      expect(person).to eq('John Faker Antuanovich')
    end
  end
end
