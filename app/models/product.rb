class Product < ApplicationRecord
  validates_presence_of :name, :price
  has_many :orders
end
