require './product.rb'


class Cart

  def initialize()
    @in_cart = []
  end

  def in_cart()
    return @in_cart
  end

  def add_to_cart(prod)
    @in_cart << prod
  end

  def remove_from_cart(prod)
    @in_cart.delete(prod)
  end

  def total_before_tax()
    total = 0
    @in_cart.each do |item|
      total = total + item.base_price
    end
    return total
  end

  def total_after_tax()
    total = 0
    @in_cart.each do |item|
      total = total + item.total_price
    end
    return total
  end

end

newcart = Cart.new

sneakers = Product.new("sneaker" , 250 , 0.13)
hat = Product.new("hat", 50 , 0.15)
shirt = Product.new("shirt" , 20 , 0.10)
pants = Product.new("pants" , 120 , 0.15)

newcart.add_to_cart(sneakers)
newcart.add_to_cart(hat)
newcart.add_to_cart(shirt)
newcart.add_to_cart(pants)

puts newcart.in_cart.inspect
puts newcart.total_before_tax
puts newcart.total_after_tax

newcart.remove_from_cart(shirt)
puts newcart.in_cart.inspect
puts newcart.total_before_tax
puts newcart.total_after_tax
