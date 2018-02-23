class RemoveColoumn5FromCvms < ActiveRecord::Migration[5.1]
  def change
    remove_column :cvms, :project, :text
  end
end
