module AbstractItem
  extend ActiveSupport::Concern

  included do
    validates :order, presence: true
    validates :product, presence: true
    validates :quantity, presence: true, numericality: { greater_than: 0, less_than: 127 }

    after_initialize do |item|
      item.quantity ||= 0
    end
  end
end
