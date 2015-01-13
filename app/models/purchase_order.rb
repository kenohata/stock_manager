class PurchaseOrder < ActiveRecord::Base
  include AbstractOrder

  has_many :items, class_name: PurchaseOrderItem, dependent: :destroy

  validates :orderer_name, presence: true, length: { maximum: 100 }
  validates :items_size, length: { minimum: 1 }
  validates :items_size_all_nonzero?, inclusion: { in: [true] }
end
