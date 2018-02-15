class AddColoumnToCvms < ActiveRecord::Migration[5.1]
  def change
    add_column :cvms, :fname, :string
    add_column :cvms, :mname, :string
    add_column :cvms, :lname, :string
    add_column :cvms, :street, :string
    add_column :cvms, :district, :string
    add_column :cvms, :country, :string
    add_column :cvms, :land, :string
    add_column :cvms, :mobile, :string
    add_column :cvms, :level, :string
    add_column :cvms, :institute, :string
    add_column :cvms, :year, :string
    add_column :cvms, :percentage, :integer
  end
end
