class Product < ActiveRecord::Base
  has_many :stock_order_items, dependent: :destroy
  has_many :purchase_order_items, dependent: :destroy

  # mount_uploader :image, ImageUploader

  validates :price, numericality: { grater_than: 0 }

  def quantity
    if item = last_order_item
      item.product_quantity_cache
    else
      0
    end
  end

  def last_order_item
    stock    = stock_order_items.first
    purchase = purchase_order_items.first

    if stock and purchase
      stock.created_at > purchase.created_at ? stock : purchase
    else
      stock or purchase
    end
  end

  def order_items
    @order_items ||= (stock_order_items + purchase_order_items).sort_by(&:created_at)
  end
end
