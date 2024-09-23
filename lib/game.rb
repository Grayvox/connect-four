# frozen_string_literal: true

require_relative 'board'
require_relative 'player'
require_relative 'utils/game_logic'
require_relative 'utils/text'

# Defines the Connect Four game
class Game
  include GameLogic
  include Text

  private

  attr_accessor :spots_taken

  public

  def initialize(symbol_one, symbol_two)
    @board = Board.new
    @possible_symbols = [symbol_one, symbol_two]
    @spots_taken = 0
    @player_one = add_player(1)
    @player_two = add_player(2)
  end

  def turn_for(player)
    puts start_of_turn(player.name)

    coordinates = check_spot(player)
    take_spot(coordinates[0], coordinates[1], player.symbol)

    puts 'Good job!'
  end
end
