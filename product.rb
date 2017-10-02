class Product

  def initialize(name,price,tax_rate)
    @name = name
    @base_price = price
    @tax_rate = tax_rate
  end

  def total_price()
    tax = @base_price * @tax_rate
    return @base_price + tax
  end

  def base_price
    return @base_price
  end

end
