require_relative "start.rb"
require_relative "cricket.rb"
require_relative "team.rb"
require_relative "over.rb"
class Compare
  
  def final
    team_1, team_2, batting_team_name, fielding_team_name = Team.new.teams_to_play
    k = Cricket.new
    total_balls = Over.new.game_type
    final_result_1 = k.game(team_1, total_balls,batting_team_name)
    final_result_2 = k.game(team_2, total_balls,fielding_team_name)
    puts "final result of Team 1 : #{final_result_1}"
    puts "final result of Team 2: #{final_result_2}"

    if final_result_1 > final_result_2
      puts "Team 1 won , congratulations"
    else
      puts "Team 2 won , Congratulations"
    end

  end
end
obj = Compare.new

obj.final