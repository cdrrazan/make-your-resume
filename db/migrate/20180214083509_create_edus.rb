class CreateEdus < ActiveRecord::Migration[5.1]
  def change
    create_table :edus do |t|
      t.string :level
      t.string :institute
      t.string :year
      t.integer :percentage

      t.timestamps
    end
  end
end
