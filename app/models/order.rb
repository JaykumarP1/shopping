class Order < ApplicationRecord
  validates_presence_of :customer_id,:product_id,:shop_id,:payment_mode,:DOP
  belongs_to :product
  belongs_to :customer
  belongs_to :shop
end
