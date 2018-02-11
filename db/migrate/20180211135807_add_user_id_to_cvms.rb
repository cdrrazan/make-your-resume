class AddUserIdToCvms < ActiveRecord::Migration[5.1]
  def change
    add_reference :cvms, :user, foreign_key: true
  end
end
