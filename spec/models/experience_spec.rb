require 'rails_helper'

RSpec.describe Experience, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "is not valid without valid company" do
    company=Experience.new(company: nil)
    expect(company).to_not be_valid
  end

  it "is not valid without position" do
    position=Experience.new(position: nil)
    expect(position).to_not be_valid
  end

  it "is not valid without jobdescription" do
    jobdate=Experience.new(jobdetail: nil)
    expect(jobdate).to_not be_valid
  end

  it "is not valid without job start date" do
    startdate=Experience.new(startdate: nil)
    expect(startdate).to_not be_valid
  end

end
