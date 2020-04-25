class RemoveColoumnFromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :resumes, :name, :string
    remove_column :resumes, :address, :string
    remove_column :resumes, :phone, :string
    remove_column :resumes, :education, :string
    remove_column :resumes, :userid, :integer
  end
end
