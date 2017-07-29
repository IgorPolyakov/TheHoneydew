require 'rails_helper'

RSpec.describe Person, type: :model do
  it "is not valid without first_name" do
    some_person = Person.new(first_name: nil)
    expect(some_person).to_not be_valid
  end
  it "is not valid without last_name" do
    some_person = Person.new(last_name: nil)
    expect(some_person).to_not be_valid
  end
  it "is not valid without middle_name" do
    some_person = Person.new(middle_name: nil)
    expect(some_person).to_not be_valid
  end
end
