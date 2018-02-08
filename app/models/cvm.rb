class Cvm < ApplicationRecord
  validates  :name, :address, :phone,
              :email, :website, :address,
                :skill, :project, :interest,
                presence: true, uniqueness: true
end
