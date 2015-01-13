module AbstractItem
  extend ActiveSupport::Concern

  included do
    after_initialize do |item|
      item.quantity ||= 0
    end
  end
end
