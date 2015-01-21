json.orders @orders do |order|
  json.order_type order.class.to_s
  json.created_at order.created_at

  json.items @products do |product|
    json.product_id   product.id
    json.product_name product.name

    if item = order.items.find{ |i| i.product_id == product.id }
      json.quantity item.quantity
    else
      json.quantity 0
    end
  end
end
