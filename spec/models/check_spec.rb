require 'rails_helper'

RSpec.describe Check, type: :model do
  some_check = Check.new(amount: 10)
  it 'amount should be greater than or equal to one' do
    expect(some_check).to be_valid
  end
end
