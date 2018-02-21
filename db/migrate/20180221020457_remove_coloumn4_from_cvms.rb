class RemoveColoumn4FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :cvms, :bpercentage, :integer
  end
end
