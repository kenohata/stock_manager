class CreateStockOrderItems < ActiveRecord::Migration
  def change
    create_table :stock_order_items do |t|
      t.integer :stock_order_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
