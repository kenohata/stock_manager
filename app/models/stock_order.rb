class StockOrder < ActiveRecord::Base
  has_many :items, class_name: StockOrderItem, dependent: :destroy
end
