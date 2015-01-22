class AllOrdersController < OrdersController
  def index
    @orders = PurchaseOrder.limit(10) + StockOrder.limit(10)
    @orders.sort_by(&:created_at)
    @products = Product.all
  end
end
