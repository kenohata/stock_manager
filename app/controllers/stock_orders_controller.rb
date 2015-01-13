class StockOrdersController < OrdersController
  private

  def order_model
    StockOrder
  end
end
