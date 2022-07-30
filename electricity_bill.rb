class Electricity
  attr_accessor :name, :units
  def initialize(name, units)
    @name = name
    @units = units
  end
  def calculate
    if (units <= 100)
      @total = (units * 6) + 50
      puts "The total bill is :#{@total}"
    elsif ( units <= 300)
      @total = (100 * 6) + ((units - 100) * 11) +50
      puts "The total bill is :#{@total}"
    elsif (units >= 300)
      @total = (100 * 6) + (100* 11) + ((units - 200) * 15)
      puts "The total bill is :#{@total}"
    else
      puts "Please enter correct units"
   end
end
  def mode
    if (@total >= 300)
      x =(@total - 300) * 0.15
      y = x + @total
      puts "\n"
      puts "As per given credentials the user details are given below.."
      puts "Name of the User is : #{@name}"
      puts "Toatl amount with 15% extra :#{y}"
    end
  end
end
puts "Enter the person name..?"
name = gets.chomp
puts "Enter the units consumed..?"
units = gets.chomp.to_i
s = Electricity.new(name, units)
s.calculate
s.mode
