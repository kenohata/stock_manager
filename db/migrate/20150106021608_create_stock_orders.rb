class CreateStockOrders < ActiveRecord::Migration
  def change
    create_table :stock_orders do |t|
      t.string :orderer_name

      t.timestamps null: false
    end
  end
end
