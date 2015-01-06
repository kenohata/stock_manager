module OrdersController

  def new
    @order = order_model.new
  end

  def create
    @order = order_model.new
  end

  private

  def params_order
    params.require(:order).permit(:orderer_name)
  end

  def params_items
    params.require(:order).permit(items: [:product_id, :quantity])
  end

  def set_params_order
    @order.assign_attributes(params_order)
    params_items[:items].each{ |item| @order.items.build(item) }
    end
  end
end
