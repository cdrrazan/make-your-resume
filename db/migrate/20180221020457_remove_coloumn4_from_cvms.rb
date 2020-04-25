# frozen_string_literal: true

class RemoveColoumn4FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :resumes, :bpercentage, :integer
  end
end
