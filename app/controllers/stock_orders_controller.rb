class StockOrdersController < ApplicationController
  include OrdersController

  private

  def order_model
    StockOrder
  end
end
