class Cvm < ApplicationRecord

belongs_to :user

has_many :educations, :inverse_of => :cvm

has_many :projects, :inverse_of => :cvm

accepts_nested_attributes_for :educations, :projects, :allow_destroy => true


# validates :fname, :lname, :street, :district,:country, :land,
#             :mobile, :email, :website,:skill, :interest,
#             presence: true

end
