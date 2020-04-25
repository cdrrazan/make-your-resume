# frozen_string_literal: true

class AddCvmToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :resume, foreign_key: true
  end
end
