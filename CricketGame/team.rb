require_relative 'start.rb'
class Team
  
  def game
    @team_1 = ["Dhawan", "Rohit", "Kohli", "Rahul", "Dhoni", "Jadhav", "Pandya", "Yadav", "Chahal","Bumrah", "Jadeja"]
    @team_2 = ["Warner", "Finch", "Khawaja", "Smith", "Maxwell", "Stoinis", "Carey", "Coulter-Nile", "Cummins", "Starc", "Zampa"]
    puts "Selecting captain from the teams.."
    puts "Tossing coin..!\nPlease wait..."
    puts "-----------------------------------------------------\n"
    sleep 1
    puts "Team 1 is : #{@team_1}"
    @captain_team_1 =(@team_1).to_a.sample
    puts "#{@captain_team_1} is the captain for the team_1"
    puts "*******************************************************\n"
    puts "Team 2 is : #{@team_2}"
    @captain_team_2 =(@team_2).to_a.sample
    puts "#{@captain_team_2} is the captain for the team_2"
    puts "------------------------------------------------------------"
    puts "Selecting Captain from the #{@captain_team_1} and #{@captain_team_2}"
    @toss =[@captain_team_1, @captain_team_2 ]
    $rand_toss= @toss[rand(@toss.count)]
    puts "#{$rand_toss} is won the toss \nCongratulations #{$rand_toss}"
      if $rand_toss == @captain_team_1
        $batting_team = @team_1
        $fielding_team = @team_2
        $batting_team_name = "team_1"
        $fielding_team_name = "team_2"
      else
        $batting_team = @team_2
        $fielding_team = @team_1
        $batting_team_name = "team_2"
        $fielding_team_name = "team_1"
      end
  end

  def teams_to_play
    [$batting_team, $fielding_team, $batting_team_name, $fielding_team_name]
  end

end
k = Team.new
k.game
k.teams_to_play
