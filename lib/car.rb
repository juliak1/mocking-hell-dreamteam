class Car
  attr_accessor :id, :brand, :model, :price

  def initialize(id, brand, model, price)
    @id = id
    @brand = brand
    @model = model
    @price = price
  end

  def total_price(days)
    price.to_i * days.to_i
  end

  def to_s
    "#{brand} #{model} #{price}"
  end
end
