class MainImage < ActiveRecord::Base
  attr_accessible :main_image, :name, :main_image_id, :category_id, :code_name, :description, :goods_name, :goods_price, :image, :key_word, :sale_or_not, :stock_control
  has_many :products
  mount_uploader :main_image, MainImageUploader
  accepts_nested_attributes_for :products
end
