# frozen_string_literal: true

module Eatable

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
