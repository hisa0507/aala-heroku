class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code_name
      t.boolean :sale_or_not
      t.string :goods_name
      t.decimal :goods_price
      t.boolean :stock_control
      t.text :description
      t.string :key_word
      t.integer :category_id
      t.string :image
      t.references :main_image

      t.timestamps
    end
    add_index :products, :main_image_id
  end
end
