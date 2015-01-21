class AllOrdersController < OrdersController
  def index
    @orders = PurchaseOrder.all + StockOrder.all
    @orders.sort_by(&:created_at)
    @products = Product.all
  end
end
