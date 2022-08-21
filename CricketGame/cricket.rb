require_relative "team.rb"
require_relative "over.rb"
class Cricket
  puts "Press Enter to start the game.."
  start = gets

  def game(team, total_balls, name)
    @balls = 0
    @players_score = 0
    puts "Press Enter to open the book.."
    book = gets
    @current_player = team.shift
    for @balls in 1..total_balls do
        page_num = rand(20)+1
        @points = page_num%10
        @players_score += @points
        @balls += 1
        puts "Ball = #{@balls}"
        puts "page number #{page_num} \t|\t Runs : #{@points} \t|\t Score : #{@players_score}"
    
        if @points == 0
          puts "Total score  is: #{@players_score}"
          puts "#{@current_player} player is out"
          @current_player = team.shift
          puts "#{@current_player}"
        end
        if (@balls == total_balls) || @current_player.nil?
          puts "Game Finished....!"
          puts "Total score  is: #{@players_score}"
          break
        end
      end
      @players_score
   end

end
k = Cricket.new
team_1, team_2,batting_team_name, fielding_team_name = Team.new.teams_to_play






