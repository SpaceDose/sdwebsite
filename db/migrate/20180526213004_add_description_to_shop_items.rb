class AddDescriptionToShopItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shop_items, :description, :string
  end
end
