class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :email, :name, :postal_code, :province_id

  has_many :orders
  belongs_to :province
end
