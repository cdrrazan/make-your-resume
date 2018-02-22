class AddCvmToExperience < ActiveRecord::Migration[5.1]
  def change
    add_reference :experiences, :cvm, foreign_key: true
  end
end
