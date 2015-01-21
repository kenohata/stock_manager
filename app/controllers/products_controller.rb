class ProductsController < ApplicationController
  def index
    @products = Product.all
    @orders   = PurchaseOrder.all + StockOrder.all
    @orders.sort_by(&:created_at)

    respond_to do |format|
      set_cors_header
      format.json { render json: @products }
      format.html
    end
  end

  def show
    @product = Product.find(params[:id])
    set_cors_header
  end
end
