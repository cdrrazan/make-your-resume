class RemoveColoumn3FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :cvms, :hinstitute, :string
    remove_column :cvms, :hyear, :string
    remove_column :cvms, :hpercentage, :integer
    remove_column :cvms, :binstitute, :string
    remove_column :cvms, :byear, :stringbpercentage
  end
end
