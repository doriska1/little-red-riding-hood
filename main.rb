# frozen_string_literal: true

require 'logger'
require_relative 'little_red_riding_hood'
require_relative 'grandmother'
require_relative 'wolf'
require_relative 'hunter'
require_relative 'cottage'

logger = Logger.new($stdout)
logger.debug('Long, long time ago...')

little_red_riding_hood = LittleRedRidingHood.new
logger.debug("there lived a girl called #{little_red_riding_hood.title}.")
grandmother = Grandmother.new
wolf = Wolf.new
little_red_riding_hood.delivering_food(grandmother)
cottage = Cottage.new
cottage.add_person(grandmother)
little_red_riding_hood.meet_person(wolf)
cottage.add_person(wolf)
wolf.eat(grandmother)
cottage.add_person(little_red_riding_hood)
wolf.eat(little_red_riding_hood)
hunter = Hunter.new
cottage.add_person(hunter)
hunter.save_person(little_red_riding_hood)
hunter.save_person(grandmother)
cottage.remove_person(wolf)

logger.debug('The end.')
