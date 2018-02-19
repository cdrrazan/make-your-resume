class AddCvmToEducation < ActiveRecord::Migration[5.1]
  def change
    add_reference :educations, :cvm, foreign_key: true
  end
end
