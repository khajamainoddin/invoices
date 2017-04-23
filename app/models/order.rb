class Order < ApplicationRecord
  has_many :line_items

  def total_price
  	line_items.to_a.sum(&:full_pirce)
  end
end
