# frozen_string_literal: true

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

class Experience < ApplicationRecord
  belongs_to :resume, optional: true

  validates :company, :position, :jobdetail, :startdate, presence: true

  has_many :projects, dependent: :destroy

  accepts_nested_attributes_for :projects, allow_destroy: true
end
