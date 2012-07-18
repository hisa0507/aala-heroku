class CreateMainImages < ActiveRecord::Migration
  def change
    create_table :main_images do |t|
      t.string :name
      t.string :main_image

      t.timestamps
    end
  end
end
