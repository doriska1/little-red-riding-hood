# frozen_string_literal: true

require_relative 'place'

class Cottage < Place
  def initialize
    super
    @title = 'Cottage'
  end
end
