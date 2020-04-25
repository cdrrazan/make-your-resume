# frozen_string_literal: true
# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  pname         :string
#  description   :text
#  startdate     :string
#  enddate       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  resume_id        :integer
#  experience_id :integer
#


class Project < ApplicationRecord
	
	belongs_to :experience, optional: true

end
