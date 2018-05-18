class AddTsusernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tsusername, :string
  end
end
