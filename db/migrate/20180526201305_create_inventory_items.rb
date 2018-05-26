class CreateInventoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_items do |t|
      t.string :uniqueid
      t.string :item
      t.integer :quantity

      t.timestamps
    end
  end
end
