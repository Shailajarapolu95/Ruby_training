require 'date'
class DateOperation
  attr_accessor :date_value, :type_value

  def demo(date_value, type_value, format)
    @date_value = date_value
    @type_value = type_value
    @format = format
      if @type_value == 'IST'
        puts @format.strftime('%d/%m/%Y')
        puts @format.strftime("%A %d %B %Y")
      elsif @type_value == 'PST'
        puts @format.strftime("%m/%d/%Y")
      elsif @type_value == 'ORT'
        puts @format.strftime("%Y/%m/%d %I:%M:%S %p")
        puts @format.strftime("%Y-%m-%d %H:%M:%S %z")
      else
        puts @format.strftime('%d/%m/%Y')
      end
   end
end

puts "Enter a valid date format"
@date_value = gets.chomp
puts "Enter a valid date type"
@type_value = gets.chomp
@format = Date.parse(@date_value)

date = DateOperation.new
date.demo(@date_value, @type_value, @format)


