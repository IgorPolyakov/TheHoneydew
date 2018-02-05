# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Inspector, type: :model do
  let(:some_inspector) { build(:inspector_alex) }
  it 'is not valid without first_name' do
    expect(some_inspector).to be_valid
  end
  it 'is not valid without last_name' do
    expect(some_inspector).to be_valid
  end
  it 'is not valid without position' do
    expect(some_inspector).to be_valid
  end
  it 'is not valid without middle_name' do
    expect(some_inspector).to be_valid
  end
  it 'is show full name' do
    expect(some_inspector.full_name).to eq('Mirror Alex - Worker')
  end
end
