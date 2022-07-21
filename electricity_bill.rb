class Electricity
  def calculate
    # puts "Enter the number of user you want check.."
    # n = gets.chomp
    # for i in 1..n
    puts "Enter the User Name..?"
    @name = gets.chomp
    puts "Enter the Units Consumed..?"
    a =  gets.chomp.to_i
    if (a <= 100)
      @total = (a * 6) + 50
      puts "The total bill is :#{@total}"
    elsif ( a <= 300)
      @total = (100 * 6) + ((a - 100) * 11) +50
      puts "The total bill is :#{@total}"
    elsif (a >= 300)
      @total = (100 * 6) + (100* 11) + ((a - 200) * 15)
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
# end
s = Electricity.new
s.calculate
s.mode
