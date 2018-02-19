class Cvm < ApplicationRecord

validates :fname, :lname, :street, :district,:country, :land,
            :mobile, :email, :website, :institute, :year, :percentage,
            :hinstitute, :hyear, :hpercentage,
            :skill, :project, :interest, presence: true

end
