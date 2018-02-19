class AddColoumn2ToCvms < ActiveRecord::Migration[5.1]
  def change
    add_column :cvms, :hinstitute, :string
    add_column :cvms, :hyear, :string
    add_column :cvms, :hpercentage, :integer
    add_column :cvms, :binstitute, :string
    add_column :cvms, :byear, :string
    add_column :cvms, :bpercentage, :integer
  end
end
