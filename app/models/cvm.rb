class Cvm < ApplicationRecord

  validates :fname, :lname, :street, :district,:country, :land,
            :mobile, :email, :website, :level, :institute, :year,
            :percentage, :skill, :project, :interest, presence: true

end
