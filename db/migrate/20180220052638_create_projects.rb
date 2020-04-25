# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :pname
      t.text :description
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end
end
