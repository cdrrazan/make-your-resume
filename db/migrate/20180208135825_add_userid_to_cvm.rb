class AddUseridToCvm < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :userid, :integer
  end
end
