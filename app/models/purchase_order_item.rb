class PurchaseOrderItem < ActiveRecord::Base
  include AbstractItem

  belongs_to :order, class_name: PurchaseOrder, foreign_key: :purchase_order_id
  belongs_to :product

  validates :order, presence: true
  validates :product, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0, less_than: 127 }
end
