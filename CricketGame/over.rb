class Over
  def total_balls
    if $type == "t20"
      @total_balls = 5*6
    elsif $type == "test"
      @total_balls = 8*6
    elsif $type == "one_day"
      @total_balls = 10*6
    else
      puts "Please select proper one"
      @total_balls
  end
 end
end