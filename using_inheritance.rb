class Add
	def show
		puts "You can Add and substract by using inheritance"
	end
	def Cal
		puts "Enter a value to add "
		a = gets.chomp.to_i
		puts "Enter b value"
		b = gets.chomp.to_i
		c = a + b
		puts "The Value Of A + B is = #{c}"
	end
end

class Sub < Add
	def Cal1
		puts "Enter a value to add "
		x = read_input.to_i
		puts "Enter b value"
		y = read_input.to_i
		z = subtract(x, y)
		puts "The Value Of x - y is = #{z}"
	end

	def read_input
		gets.chomp
	end

	def subtract(x, y)
		x - y
	end
end

ob1 = Sub.new
ob1.show
ob1.Cal
ob1.Cal1












