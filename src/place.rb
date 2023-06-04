# frozen_string_literal: true

require 'logger'

class Place
  attr_reader :title
  attr_accessor :characters

  def initialize
    @characters = []
    @logger = Logger.new($stdout)
  end

  def add_character(character)
    @characters.push(character)
    @logger.debug("In #{@title} is #{character.title}.")
  end

  def remove_character(character)
    @characters.delete character
    @logger.debug("#{character.title} is not in #{@title}.")
  end
end
