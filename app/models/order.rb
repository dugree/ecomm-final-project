class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status_id

  belongs_to :customer
end
