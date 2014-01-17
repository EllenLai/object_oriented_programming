class Product
	attr_accessor :quantity, :name, :price
	def initialize (quantity, name, price)
		@tax_rate = 0.1
		@quantity = quantity
		@name = name
		@price = price
	end

	def calculate_sales_tax
		@price * @tax_rate
	end

	def calculate_total
		@price + calculate_sales_tax
	end

end

class ExemptGoods  < Product
	def initialize (quantity, name, price)
		super
		@tax_rate = 0
	end
end

class ImportGoods < Product
	def initialize (quantity, name, price)
		super
		@tax_rate = 0.15
	end
end

class ImportExempt < Product
	def initialize (quantity, name, price)
		super
		@tax_rate = 0.05
	end
end

#input 1



item1 = ExemptGoods.new(1, "book", 12.49)
item2 = Product.new(1, "music_cd", 16.49)
item3 = ExemptGoods.new(1, "chocolate bar", 0.85)
item4 = ImportExempt.new(1, "imported box of chocolates", 10.50)
item5 = ImportGoods.new(1, "imported bottle of perfume", 54.65)
item6 = ImportGoods.new(1, "imported bottle of perfume", 32.19)
item7 = Product.new(1, "bottle of perfume", 20.89)
item8 = ExemptGoods.new(1, "packet of headache pills", 9.75)
item9 = ExemptGoods.new(1, "imported box of chocolates", 11.85)
# puts "#{item9.quantity} #{item9.name}: #{item9.price}"

input = [item1, item2, item3]
input2 = [item4, item5]
input3 = [item6, item7, item8, item9]

def print_receipt(input)
	input.each do |x|
		puts "#{x.quantity} #{x.name}: #{x.calculate_total}"
	end

	totalTax = input.inject(0) {|x,y| x + y.calculate_sales_tax}
		puts "Sales Tax: #{totalTax}"

	totalPrice = input.inject(0) {|x,y| x + y.calculate_total}
		puts "Total: #{totalPrice}"
	end

puts "Output 1:"
print_receipt(input)
puts ("\n") + "Output 2:"
print_receipt(input2)
puts ("\n") + "Output 3:"
print_receipt(input3)


