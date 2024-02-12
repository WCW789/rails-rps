class GamesController < ApplicationController
  def play_rock
    @player_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample

    @result = who_wins(@player_choice, @computer_choice)
    
    render({ :template => "games/play_rock" })
  end

  def play_scissors
    @player_choice = "scissors"
    @computer_choice = ["rock", "paper", "scissors"].sample

    @result = who_wins(@player_choice, @computer_choice)
    
    render({ :template => "games/play_scissors" })
  end

  def play_paper
    @player_choice = "paper"
    @computer_choice = ["rock", "paper", "scissors"].sample

    @result = who_wins(@player_choice, @computer_choice)
    
    render({ :template => "games/play_paper" })
  end


  def who_wins(player, computer)
    if player == computer
      "We tied!"
    elsif (player == "rock" && computer == "scissors") ||
          (player == "scissors" && computer == "paper") ||
          (player == "paper" && computer == "rock")
      "We won!"
    else
      "We lost!"
    end
  end
end
