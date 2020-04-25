# frozen_string_literal: true

class AddExperienceToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :experience, foreign_key: true
  end
end
