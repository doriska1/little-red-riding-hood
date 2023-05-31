# frozen_string_literal: true

require 'logger'

class Place
  attr_reader :title
  attr_accessor :people

  def initialize
    @people = []
    @logger = Logger.new($stdout)
  end

  def add_person(person)
    @people.push(person)
    @logger.debug("In #{@title} is #{person.title}.")
  end

  def remove_person(person)
    @people.delete person
    @logger.debug("#{person.title} is not in #{@title}.")
  end
end
