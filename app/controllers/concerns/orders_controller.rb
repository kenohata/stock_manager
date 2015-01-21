class OrdersController < ApplicationController
  before_action :set_new_order, only: [:new, :create]
  before_action :set_order, only: [:show]

  def index
    @orders = order_model.all
    @products = Product.all

    respond_to do |format|
      set_cors_header
      format.json { render 'orders/index.json' }
      format.html
    end
  end

  def new
  end

  def create
    set_params_order

    respond_to do |format|
      if @order.save
        set_cors_header
        format.json { render json: @products }
      else
        format.json { render json: @order.errors.full_messages, status: :bad_request }
      end
    end
  end

  def show
    set_cors_header
  end

  private

  def params_order
    params.require(:order).permit(:orderer_name, items: [:product_id, :quantity])
  end

  def set_new_order
    @order = order_model.new
  end

  def set_params_order
    @order.assign_attributes(orderer_name: params_order[:orderer_name])

    params_order[:items].each do |item|
      product  = Product.find(item[:product_id])
      quantity = item[:quantity]

      @order.items.build(product: product, quantity: quantity, order: @order) if quantity and quantity.to_i.nonzero?
    end
  end

  def set_order
    @order = order_model.find(params[:id])
  end

  def set_cors_header
    headers['Access-Control-Allow-Origin'] = "*"
  end
end
