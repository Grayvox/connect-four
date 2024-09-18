# frozen_string_literal: true

# Module containing text outputs for the game
module Text
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
