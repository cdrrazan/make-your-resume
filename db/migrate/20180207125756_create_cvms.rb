class CreateCvms < ActiveRecord::Migration[5.1]
  def change
    create_table :cvms do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.text :skill
      t.text :project
      t.text :interest

      t.timestamps
    end
  end
end
