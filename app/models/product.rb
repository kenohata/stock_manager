class Product < ActiveRecord::Base
  has_many :stock_order_items, dependent: :destroy
  has_many :purchase_order_items, dependent: :destroy
end
