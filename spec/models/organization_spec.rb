# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  let(:person) { create(:random_person) }
  let(:company) { create(:random_company, person: person) }

  it 'is not valid without company_name' do
    expect(company).to be_valid
  end
  it 'is not valid without position' do
    expect(company).to be_valid
  end
end
