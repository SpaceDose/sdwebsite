class AddHideToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hide, :integer
  end
end
