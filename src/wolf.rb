# frozen_string_literal: true

require_relative 'character'

class Wolf < Character
  def initialize
    super
    @title = 'Wolf'
  end

  def eat(person)
    if person.eatable?
      @logger.debug("#{@title} eat #{person.title}.")
      person.eaten!
    else
      @logger.debug("#{@title} can't eat #{person.title}.")
    end
  end
end
