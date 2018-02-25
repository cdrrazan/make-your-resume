class Project < ApplicationRecord

belongs_to :experience, optional: true

validates :pname, :description, :startdate, presence: true

end
