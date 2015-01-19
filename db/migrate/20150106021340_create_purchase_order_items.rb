class CreatePurchaseOrderItems < ActiveRecord::Migration
  def change
    create_table :purchase_order_items do |t|
      t.integer :purchase_order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :product_quantity_cache

      t.timestamps null: false

      t.index :purchase_order_id
      t.index :product_id
    end
  end
end
