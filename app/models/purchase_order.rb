class PurchaseOrder < ActiveRecord::Base
  include AbstractOrder

  has_many :items, class_name: PurchaseOrderItem, dependent: :destroy

  # validates :orderer_name, presence: true, length: { maximum: 100 }
  validates :items_size, numericality: { greater_than: 0 }
  validates :items_size_all_nonzero?, inclusion: { in: [true] }
end
