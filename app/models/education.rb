class Education < ApplicationRecord

belongs_to :cvm, optional: true

validates   :level, :institute, :year, :percentage,
              presence: true

end
