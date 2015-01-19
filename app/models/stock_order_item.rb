class StockOrderItem < ActiveRecord::Base
  include AbstractItem

  belongs_to :order, class_name: StockOrder, foreign_key: :stock_order_id
  belongs_to :product

  def quantity_diff
    0 + quantity
  end
end
