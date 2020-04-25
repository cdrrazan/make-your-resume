# frozen_string_literal: true

class AddCvmToEducation < ActiveRecord::Migration[5.1]
  def change
    add_reference :educations, :resume, foreign_key: true
  end
end
