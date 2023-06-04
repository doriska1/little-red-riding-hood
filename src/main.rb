# frozen_string_literal: true

require 'logger'
require_relative 'little_red_riding_hood'
require_relative 'grandmother'
require_relative 'wolf'
require_relative 'hunter'
require_relative 'cottage'
require_relative 'forest'

logger = Logger.new($stdout)
logger.debug('Long, long time ago...')

little_red_riding_hood = LittleRedRidingHood.new
logger.debug("there lived a girl called #{little_red_riding_hood.title}.")
grandmother = Grandmother.new
wolf = Wolf.new
forest = Forest.new
forest.add_character(little_red_riding_hood)
forest.add_character(grandmother)
little_red_riding_hood.delivering_food(grandmother)
cottage = Cottage.new
cottage.add_character(grandmother)
forest.add_character(wolf)
little_red_riding_hood.meet_person(wolf)
cottage.add_character(wolf)
wolf.eat(grandmother)
cottage.add_character(little_red_riding_hood)
wolf.eat(little_red_riding_hood)
hunter = Hunter.new
cottage.add_character(hunter)
hunter.save_person(little_red_riding_hood)
hunter.save_person(grandmother)
cottage.remove_character(wolf)

logger.debug('The end.')
