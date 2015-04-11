class DiceController < ApplicationController

  def roll
    pair = random_pair
    @dice1 = pair[0]
    @dice2 = pair[1]

    if params["goal"].nil?
      first_roll
    else
      next_roll
    end
  end

  def first_roll
    sum = @dice1 + @dice2
    if sum == 7 || sum == 11
      render "win"
    elsif sum == 2 || sum == 3 || sum == 12
      render "lose"
    else
      render "first_roll"
    end
  end

  def next_roll
    sum = @dice1 + @dice2
    @goal = params["goal"].to_i
    if sum == @goal
      render "win"
    elsif sum == 7
      render "lose"
    else
      render "next_roll"
    end
  end

  def random_pair
    sides = [1, 2, 3, 4, 5, 6]
    return [sides.sample, sides.sample]
  end

end
