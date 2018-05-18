class AddUniqueidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :uniqueid, :string
  end
end
