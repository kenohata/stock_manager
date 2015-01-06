json.extract! purchase_order, :orderer_name, :created_at
json.items stock_order.items, partial: 'stock_order_items/stock_order_item'
