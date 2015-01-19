class PurchaseOrderItem < ActiveRecord::Base
  include AbstractItem

  belongs_to :order, class_name: PurchaseOrder, foreign_key: :purchase_order_id
  belongs_to :product
end
