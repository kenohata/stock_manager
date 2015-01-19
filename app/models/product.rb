class Product < ActiveRecord::Base
  has_many :stock_order_items, dependent: :destroy
  has_many :purchase_order_items, dependent: :destroy

  # mount_uploader :image, ImageUploader

  validates :price, numericality: { grater_than: 0 }

  def stock_quantity
    if @stock_quantity
      @stock_quantity
    else
      accum    = ->(sum, item){ sum + item.quantity }
      incoming = stock_order_items.inject(0, &accum)
      outgoing = purchase_order_items.inject(0, &accum)
      @stock_quantity = incoming - outgoing
    end
  end
end
