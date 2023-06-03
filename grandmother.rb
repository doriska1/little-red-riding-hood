# frozen_string_literal: true
require_relative 'eatable'
require_relative 'character'

class Grandmother < Character
  attr_accessor :eaten

  include Eatable
  def initialize
    super
    @title = 'Grandmother'
    @eaten = false
  end
end
