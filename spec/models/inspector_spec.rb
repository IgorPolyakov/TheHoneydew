require 'rails_helper'

RSpec.describe Inspector, type: :model do
  some_inspector = Inspector.new(first_name: "fff", last_name: "lll", middle_name: "mmm", position: "ppp")
  it "is not valid without first_name" do
    expect(some_inspector).to be_valid
  end
  it "is not valid without last_name" do
    expect(some_inspector).to be_valid
  end
  it "is not valid without position" do
    expect(some_inspector).to be_valid
  end
  it "is not valid without middle_name" do
    expect(some_inspector).to be_valid
  end
  it "is show full name" do
    expect(some_inspector.full_name).to eq("lll fff - ppp")
  end
end
