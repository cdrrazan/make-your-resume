class AddUseridToCvm < ActiveRecord::Migration[5.1]
  def change
    add_column :cvms, :userid, :integer
  end
end
