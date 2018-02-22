class Experience < ApplicationRecord

  has_many  :projects

  accepts_nested_attributes_for :projects, :allow_destroy => true

  belongs_to :cvm

  validates :company, :position, :jobdetail, :startdate, :enddate, presence: true
end
