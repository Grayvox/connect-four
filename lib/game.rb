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

  def initialize
    @board = Board.new
    @possible_symbols = ['☀', '☁']
    @spots_taken = 0
    @player_one = add_player(1)
    @player_two = add_player(2)
  end
end
