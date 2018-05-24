class RemovePointFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :points, :integer
  end
end
