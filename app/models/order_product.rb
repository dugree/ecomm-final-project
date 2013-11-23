class OrderProduct < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity

  validates :order_id, :price,   :presence => true
  validates :price,             :numericality => { :greater_than_or_equal_to => 0.01 }

  belongs_to :order
  belongs_to :product
end
