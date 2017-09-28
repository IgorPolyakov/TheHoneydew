# frozen_string_literal: true

require 'rails_helper'
require 'date'
RSpec.describe Check, type: :model do
  some_check = Check.new(amount: 10)
  it 'amount should be greater than or equal to one' do
    expect(some_check.amount).to eq(10)
  end
  it 'check start should less than check finish' do
    some_check.check_start = Date.today
    some_check.check_finish = Date.today
    some_check.check_remark_destroy = Date.today
    expect(some_check.valid?).to be_falsey
  end
end
