require 'rails_helper'

RSpec.describe Check, type: :model do
  some_check = Check.new(amount: 10)
  it 'amount should be greater than or equal to one' do
    expect(some_check.amount).to eq(10)
  end
end
