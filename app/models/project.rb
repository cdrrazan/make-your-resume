class Project < ApplicationRecord

belongs_to :cvm, optional: true

validates :pname, :description, :startdate, :enddate, presence: true

end
