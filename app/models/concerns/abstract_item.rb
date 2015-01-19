module AbstractItem
  extend ActiveSupport::Concern

  included do
    validates :order, presence: true
    validates :product, presence: true
    validates :quantity, presence: true, numericality: { greater_than: 0, less_than: 127 }
    validates :product_quantity_cache, presence: true, numericality: true

    default_scope -> { order(created_at: :desc) }

    after_initialize do |item|
      item.quantity ||= 0
    end

    before_validation do |item|
      item.product_quantity_cache = last_product_quantity + quantity_diff if new_record?
    end

    def last_product_quantity
      if item = product.last_order_item
        item.product_quantity_cache
      else
        0
      end
    end
  end
end
