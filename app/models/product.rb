class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :price, :stock, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :category_id, :name, :price, :stock,   :presence => true
  validates :name,                                :uniqueness => true
  validates :price,                               :numericality => { :greater_than_or_equal_to => 0.01 }
  validates :stock,                               :numericality => { :greater_than_or_equal_to => 0 }

  has_many :order_products
  belongs_to :category
end
