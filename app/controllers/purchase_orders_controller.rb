class PurchaseOrdersController < OrdersController
  private

  def order_model
    PurchaseOrder
  end
end
