class AddMaximumToShopItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shop_items, :maximum, :integer
  end
end
