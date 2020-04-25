# == Schema Information
#
# Table name: experiences
#
#  id         :integer          not null, primary key
#  company    :string
#  position   :string
#  jobdetail  :text
#  startdate  :text
#  enddate    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  resume_id     :integer
#

require 'rails_helper'

RSpec.describe Experience, type: :model do
# pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with valid attributes" do
    experience1=Experience.new(:company => "XYZ", :position => "Intern", :jobdetail => "learn in rails", :startdate => "01/01/2013")
    expect(experience1).to be_valid
  end

  it "is not valid without valid company" do
    company=Experience.new(company: nil)
    expect(company).to_not be_valid
  end

  it "is not valid without position" do
    position=Experience.new(position: nil)
    expect(position).to_not be_valid
  end

  it "is not valid without jobdetail" do
    jobdetail=Experience.new(jobdetail: nil)
    expect(jobdetail).to_not be_valid
  end

  it "is not valid without job start date" do
    startdate=Experience.new(startdate: nil)
    expect(startdate).to_not be_valid
  end

end
