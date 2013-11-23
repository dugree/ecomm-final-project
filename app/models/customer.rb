class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :email, :name, :postal_code, :province_id

  validates :address, :city, :email, :postal_code, :province_id,  :presence => true
  validates :email,                                              :uniqueness => true


  has_many :orders
  belongs_to :province
end
