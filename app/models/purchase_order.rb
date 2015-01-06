class PurchaseOrder < ActiveRecord::Base
  has_many :items, class_name: PurchaseOrderItem, dependent: :destroy

  validates :orderer_name, presence: true, length: { maximum: 100 }
end
