class OrdersController < ApplicationController
  before_action :set_new_order
  def index
    @orders = order_model.all
  end

  def new
  end

  def create
    set_params_order

    respond_to do |format|
      if @order.save
        format.json { render json: @products }
      else
        format.json { render json: @order.errors.full_messages, status: :bad_request }
      end
    end
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
end
