require 'Date'
class DateOperation
  def demo
    puts "Enter a valid date format"
    @date_value = gets.chomp
    puts "Enter a valid date type"
    @type_value = gets.chomp
    @format = Date.parse(@date_value)

      if @type_value == 'IST'
        puts @format.strftime('%d/%m/%Y')
        puts @format.strftime("%A %d %B %Y")
      elsif @type_value == 'PST'
        puts @format.strftime("%m/%d/%Y")
      elsif @type_value == 'ORT'
        puts @format.strftime("%Y/%m/%d %I:%M:%S %p")
        puts Date.parse(@date).strftime("%Y-%m-%d %H:%M:%S %z")
      else
        puts Date.parse(@date).strftime('%d/%m/%Y')
      end
   end
end

date = DateOperation.new
date.demo