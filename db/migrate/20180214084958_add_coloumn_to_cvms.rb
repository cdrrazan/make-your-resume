class AddColoumnToCvms < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :fname, :string
    add_column :resumes, :mname, :string
    add_column :resumes, :lname, :string
    add_column :resumes, :street, :string
    add_column :resumes, :district, :string
    add_column :resumes, :country, :string
    add_column :resumes, :land, :string
    add_column :resumes, :mobile, :string
    add_column :resumes, :level, :string
    add_column :resumes, :institute, :string
    add_column :resumes, :year, :string
    add_column :resumes, :percentage, :integer
  end
end
