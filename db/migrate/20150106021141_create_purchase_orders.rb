class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.string :orderer_name

      t.timestamps null: false
    end
  end
end
