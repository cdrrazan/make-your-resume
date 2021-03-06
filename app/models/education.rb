# frozen_string_literal: true

# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  level      :string
#  institute  :string
#  year       :string
#  percentage :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  resume_id     :integer
#

class Education < ApplicationRecord
  belongs_to :resume, optional: true

  validates :level, :institute, :year, :percentage,
            presence: true
end
