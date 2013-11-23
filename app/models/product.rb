class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :price, :stock

  has_many :order_products
  belongs_to :category
end
