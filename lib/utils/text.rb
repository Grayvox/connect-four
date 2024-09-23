# frozen_string_literal: true

# Module containing text outputs for the game
module Text
  def build_visual(board, result = '', y_coord = 0, x_coord = 0)
    return result if y_coord > 5

    return build_visual(board, result += "|\n", y_coord + 1, 0) if x_coord > 6

    result += "| #{board[y_coord][x_coord]} "
    build_visual(board, result, y_coord, x_coord + 1)
  end

  def start_of_turn(player_name)
    %(
      Alright #{player_name}, it's your turn!
      Please provide the X and Y coordinates of where you want to place your token.
    )
  end

  def name_prompt(num)
    %(
      Alright, Player #{num == 1 ? 'One' : 'Two'}, what's your name?
    )
  end

  def symbol_prompt(symbol)
    %(
      Okay! Your symbol in the game will be #{symbol}
    )
  end
end
