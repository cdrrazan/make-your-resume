# frozen_string_literal: true

class RemoveColoumn3FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :resumes, :hinstitute, :string
    remove_column :resumes, :hyear, :string
    remove_column :resumes, :hpercentage, :integer
    remove_column :resumes, :binstitute, :string
    remove_column :resumes, :byear, :stringbpercentage
  end
end
