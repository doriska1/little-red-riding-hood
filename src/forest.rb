# frozen_string_literal: true
require_relative 'place'

class Forest < Place
  def initialize
    super
    @title = 'Forest'
  end
end
