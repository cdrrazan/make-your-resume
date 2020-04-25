# frozen_string_literal: true

class RemoveColoumn2FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :resumes, :level, :string
    remove_column :resumes, :institute, :string
    remove_column :resumes, :year, :string
    remove_column :resumes, :percentage, :integer
  end
end
