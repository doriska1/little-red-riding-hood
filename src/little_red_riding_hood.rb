# frozen_string_literal: true

require_relative 'eatable'
require_relative 'grandmother'

class LittleRedRidingHood < Character
  attr_accessor :eaten

  include Eatable
  def initialize
    super
    @title = 'Little Red Riding Hood'
    @eaten = false
  end

  def delivering_food(person)
    @logger.debug("#{@title} is delivering food to her #{person.title}.")
  end

  def meet_person(person)
    @logger.debug("#{@title} is meeting #{person.title}.")
  end
end
