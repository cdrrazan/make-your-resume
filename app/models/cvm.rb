# frozen_string_literal: true

# == Schema Information
#
# Table name: resumes
#
#  id         :integer          not null, primary key
#  email      :string
#  website    :string
#  skill      :text
#  interest   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  fname      :string
#  mname      :string
#  lname      :string
#  street     :string
#  district   :string
#  country    :string
#  land       :string
#  mobile     :string
#  avatars    :string
#

class Cvm < ApplicationRecord
  belongs_to :user

  has_many :educations, inverse_of: :resume, dependent: :destroy

  has_many :experiences, inverse_of: :resume, dependent: :destroy

  accepts_nested_attributes_for :educations, :experiences, allow_destroy: true

  validates :fname, :lname, :street, :district, :country, :land,
            :mobile, :email, :website, :skill, :interest,
            presence: true

  validates_presence_of :educations, :experiences
end
