class RemoveColoumn2FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :cvms, :level, :string
    remove_column :cvms, :institute, :string
    remove_column :cvms, :year, :string
    remove_column :cvms, :percentage, :integer
  end
end
