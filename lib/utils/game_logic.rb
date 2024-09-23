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

  def check_spot(player)
    puts 'Enter the X value: '
    x_coord = gets.chomp.to_i
    puts 'Enter the Y value: '
    y_coord = gets.chomp.to_i

    return [x_coord, y_coord] unless (x_coord - 1) > 6 || (y_coord - 1) > 5 || @board.view[x_coord][y_coord] != '○'

    puts 'Invalid spot chosen! Try again...'
    check_spot(player)
  end

  def take_spot(x_coord, y_coord, symbol)
    @board.view[y_coord - 1][x_coord - 1] = symbol
  end
end
