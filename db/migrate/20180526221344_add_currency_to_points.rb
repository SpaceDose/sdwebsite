class AddCurrencyToPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :currency, :integer
  end
end
