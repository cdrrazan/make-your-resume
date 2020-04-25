# frozen_string_literal: true

class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :level
      t.string :institute
      t.string :year
      t.string :percentage

      t.timestamps
    end
  end
end
