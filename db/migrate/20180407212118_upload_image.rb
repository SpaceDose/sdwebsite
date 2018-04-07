class UploadImage < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :url
      t.string :tag
      t.integer :sfw
      t.timestamps
    end
  end
end
