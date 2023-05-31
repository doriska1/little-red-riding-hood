# frozen_string_literal: true

class Hunter < Person

  def initialize
    super
    @title = "Hunter"
  end

  def save_person(person)
    if person.eaten == true
      @logger.debug("#{@title} save #{person.title}.")
      person.eaten = false
      @logger.debug("#{person.title} is not eaten now.")
    end
  end
end
