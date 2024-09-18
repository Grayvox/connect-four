# frozen_string_literal: true

# Module containing internal game logic
module GameLogic
  def add_player(num)
    symbol = possible_symbols[num - 1]

    puts name_prompt(num)
    name = gets.chomp
    puts symbol_prompt(symbol)

    Player.new(name, symbol)
  end
end
