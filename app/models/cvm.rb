class Cvm < ApplicationRecord

belongs_to :user

has_many :educations, :inverse_of => :cvm

has_many :experiences, :inverse_of => :cvm

accepts_nested_attributes_for :educations, :experiences, :allow_destroy => true


validates     :fname, :lname, :street, :district,:country, :land,
              :mobile, :email, :website,:skill, :interest,
              presence: true

end
