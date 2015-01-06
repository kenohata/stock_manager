class StockOrder < ActiveRecord::Base
  has_many :items, class_name: StockOrderItem, dependent: :destroy

  validates :orderer_name, presence: true, length: { maximum: 100 }
  validates :item_size, length: { minimum: 1 }

  def item_size
    item.size
  end
end
