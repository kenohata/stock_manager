json.extract! purchase_order, :orderer_name, :created_at
json.items purchase_order.items, partial: 'purchase_order_items/purchase_order_item'
