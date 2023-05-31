# frozen_string_literal: true

require 'logger'

class Person
  attr_reader :title
  attr_accessor :eaten

  def initialize
    @logger = Logger.new($stdout)
    @eaten = false
  end

  def eatable?
    if @eaten
      false
    else
      true
    end
  end

  def eaten!
    @eaten = true
    @logger.debug("#{@title} is eaten.")
  end
end
