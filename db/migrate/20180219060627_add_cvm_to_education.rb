class AddCvmToEducation < ActiveRecord::Migration[5.1]
  def change
    add_reference :educations, :resumeq, foreign_key: true
  end
end
