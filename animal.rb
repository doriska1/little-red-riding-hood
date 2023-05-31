# frozen_string_literal: true

require 'logger'

class Animal
  attr_reader :title

  def initialize
    @logger = Logger.new($stdout)
  end
end
