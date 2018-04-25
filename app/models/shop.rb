class Shop < ApplicationRecord
  validates_presence_of :name
  has_many :orders,dependent: :destroy
  has_many :products
  has_and_belongs_to_many :customers
  has_many :addrs, as: :orderable

end

