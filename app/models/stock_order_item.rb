class StockOrderItem < ActiveRecord::Base
  include AbstractItem

  belongs_to :order, class_name: StockOrder, foreign_key: :stock_order_id
  belongs_to :product
end
