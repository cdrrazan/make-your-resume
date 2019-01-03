class Experience < ApplicationRecord

  belongs_to :cvm, optional: true

  validates :company, :position, :jobdetail, :startdate, presence: true

  has_many  :projects, dependent: :destroy

  accepts_nested_attributes_for :projects, allow_destroy: true


end
