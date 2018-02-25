class Experience < ApplicationRecord

  belongs_to :cvm

  has_many  :projects, dependent: :destroy

  accepts_nested_attributes_for :projects, :allow_destroy => true, :reject_if => :all_blank

  validates :company, :position, :jobdetail, :startdate, presence: true
end
