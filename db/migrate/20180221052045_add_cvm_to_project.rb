class AddCvmToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :cvm, foreign_key: true
  end
end
