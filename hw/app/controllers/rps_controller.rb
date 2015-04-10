class RpsController < ApplicationController

  def choose
    @weapons = weapon_list
  end

  def results
    @player = params["weapon"]
    @computer = weapon_list.sample

    if @player == @computer
      @result = "It's a tie!"
    elsif player_wins
      @result = "You win!"
    else
      @result = "The computer wins!"
    end
  end

  def weapon_list
    return ["Rock", "Paper", "Scissors"]
  end

  def player_wins
    if @player == 'Rock' && @computer == 'Scissors'
      return true
    end

    if @player == 'Scissors' && @computer == 'Paper'
      return true
    end

    if @player == 'Paper' && @computer == 'Rock'
      return true
    end

    return false
  end

end
