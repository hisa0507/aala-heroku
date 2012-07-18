class Product < ActiveRecord::Base
  belongs_to :main_image
  attr_accessible :main_image, :name, :category_id, :code_name, :description, :goods_name, :goods_price, :image, :key_word, :sale_or_not, :stock_control
  validates :goods_name, :presence => true
  mount_uploader :image, ImageUploader
end
