# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120715183315) do

  create_table "main_images", :force => true do |t|
    t.string   "name"
    t.string   "main_image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "code_name"
    t.boolean  "sale_or_not"
    t.string   "goods_name"
    t.decimal  "goods_price"
    t.boolean  "stock_control"
    t.text     "description"
    t.string   "key_word"
    t.integer  "category_id"
    t.string   "image"
    t.integer  "main_image_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "products", ["main_image_id"], :name => "index_products_on_main_image_id"

end
