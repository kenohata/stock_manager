module AbstractOrder
  def items_size
    items.size
  end

  def items_size_all_nonzero?
    items.all? do |item|
      item.quantity.nonzero?
    end
  end
end
