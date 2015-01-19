class CreateStockOrderItems < ActiveRecord::Migration
  def change
    create_table :stock_order_items do |t|
      t.integer :stock_order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :product_quantity_cache

      t.timestamps null: false

      t.index :stock_order_id
      t.index :product_id
    end
  end
end
