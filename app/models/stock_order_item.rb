class StockOrderItem < ActiveRecord::Base
  belongs_to :order, class_name: StockOrder, foreign_key: :stock_order_id
  belongs_to :product

  validates :order, presence: true
  validates :product, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0, less_than: 127 }
end
