# frozen_string_literal: true

class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.text :jobdetail
      t.text :startdate
      t.text :enddate

      t.timestamps
    end
  end
end
