# frozen_string_literal: true

# Defines the board itself
class Board
  private

  attr_accessor :view

  public

  def initialize
    @view = Array.new(7, Array.new(6))
  end
end
