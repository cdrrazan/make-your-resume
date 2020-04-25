# frozen_string_literal: true

class AddColoumn2ToCvms < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :hinstitute, :string
    add_column :resumes, :hyear, :string
    add_column :resumes, :hpercentage, :integer
    add_column :resumes, :binstitute, :string
    add_column :resumes, :byear, :string
    add_column :resumes, :bpercentage, :integer
  end
end
