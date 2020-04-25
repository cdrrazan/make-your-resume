# frozen_string_literal: true

class RemoveColoumn5FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :resumes, :project, :text
  end
end
