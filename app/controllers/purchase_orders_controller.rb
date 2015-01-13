class PurchaseOrdersController < OrdersController
  def index
    @orders = order_model.all
  end

  private

  def order_model
    PurchaseOrder
  end
end
