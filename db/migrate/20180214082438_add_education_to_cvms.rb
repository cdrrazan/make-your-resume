# frozen_string_literal: true

class AddEducationToCvms < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :education, :string
  end
end
