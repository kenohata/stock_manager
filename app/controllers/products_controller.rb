class ProductsController < ApplicationController
  def index
    @products = Product.all
    @orders   = PurchaseOrder.all + StockOrder.all
    @orders.sort_by(&:created_at)

    respond_to do |format|
      format.json { render json: @products }
      format.html
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
