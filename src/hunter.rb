# frozen_string_literal: true

require_relative 'character'

class Hunter < Character
  def initialize
    super
    @title = 'Hunter'
  end

  def save_person(person)
    if person.eaten
      @logger.debug("#{@title} saves #{person.title}.")
      person.eaten = false
      @logger.debug("#{person.title} is not eaten now.")
    end
  end
end
