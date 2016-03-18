class ShoppingCart
	def initialize
		@items = []
	end
	
	def add_item(item)
		@items.push(item)
	end
	
	def checkout
		total_price = 0
		@items.each do |item|
			total_price += item.price
		puts total_price
		end
	end
	
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      price = @price
  end
end

class Houseware < Item
  def price
     if @price > 100
		price = @price * 0.95
	 end
  end
end

class Fruit < Item
  def price
	t = Time.new()
	if t.wednesday? == true or t.thursday? == true
		price = @price * 0.8
	else
		puts "j"
	end
  end
end

banana = Fruit.new("Banana", 10)
orange = Fruit.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vaccum_cleaner = Houseware.new("Vaccum cleaner", 150)
anchovies = Item.new("anchovie", 2)

puts banana.class

my_cart = ShoppingCart.new
my_cart.add_item(rice)
my_cart.add_item(vaccum_cleaner)
my_cart.checkout
