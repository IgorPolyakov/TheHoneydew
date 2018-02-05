# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'random' do
    let(:person) { build(:random_person) }
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
      expect(person.full_name).to eq('Faker John Antuanovich')
    end
  end
end
