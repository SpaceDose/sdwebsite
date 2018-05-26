class CreateShopItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_items do |t|
      t.string :item
      t.string :picturename
      t.integer :costs

      t.timestamps
    end
  end
end
