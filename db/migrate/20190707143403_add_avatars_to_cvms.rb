class AddAvatarsToCvms < ActiveRecord::Migration[5.2]
  def change
    add_column :cvms, :avatars, :string
  end
end
