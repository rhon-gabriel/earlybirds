class RemoveStatusFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :status, :integer
  end
end
