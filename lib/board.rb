# frozen_string_literal: true

# Defines the board itself
class Board
  attr_reader :view

  private

  attr_writer :view

  public

  def initialize
    @view = Array.new(7, Array.new(6))
  end
end
