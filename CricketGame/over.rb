class Over
  def game_type
    puts "Enter type of the match"
    $type = gets.chomp
    if $type == "t20"
      puts "You have selected T20"
      @total_balls = 5*6
    elsif $type == "test"
      puts "You have selected Test Match"
      @total_balls = 8*6
    elsif $type == "one_day"
      puts "You have selected One Day International"
      @total_balls = 10*6
    else
      puts "You didn't select a valid game type"
    end
  puts "#{@total_balls}"
  return @total_balls
 end
end

