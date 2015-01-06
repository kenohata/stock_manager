class PurchaseOrdersController < ApplicationController
  include OrdersController

  private

  def order_model
    PurchaseOrder
  end
end
