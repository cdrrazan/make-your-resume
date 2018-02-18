class RemoveColoumnFromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :cvms, :name, :string
    remove_column :cvms, :address, :string
    remove_column :cvms, :phone, :string
    remove_column :cvms, :education, :string
    remove_column :cvms, :userid, :integer
  end
end
