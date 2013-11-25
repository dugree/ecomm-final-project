class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status_id

  validates :customer_id, :status_id,      :presence => true
  belongs_to :customer
  belongs_to :status
end
