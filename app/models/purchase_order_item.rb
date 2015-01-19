class PurchaseOrderItem < ActiveRecord::Base
  include AbstractItem

  belongs_to :order, class_name: PurchaseOrder, foreign_key: :purchase_order_id
  belongs_to :product

  def quantity_diff
    0 - quantity
  end
end
