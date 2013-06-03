class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image
      t.integer :weight, default: 0, null: false

      t.timestamps
    end
  end
end
