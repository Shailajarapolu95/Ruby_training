class Type
  puts "Enter Game Type.."
  $type = gets.chomp.to_s

  def game_type
    case $type
      when "t20"
        puts "You have selected T20"
      when "one_day"
        puts "You have selected One Day International"
      when "test"
        puts "You have selected Test Match"
      else
        puts "You didn't select a valid game type"
    end
  end
  
end
obj = Type.new
