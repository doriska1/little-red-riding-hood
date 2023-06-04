# frozen_string_literal: true

require_relative '../src/place'
require_relative '../src/character'

describe Place do
  subject(:place) { described_class.new }
  subject(:character) { build(:character) }

  it 'add new character to place' do
    place.add_character(character)
    expect(place.characters).to eq [character]
  end

  it 'remove character from place' do
    place.add_character(character)
    place.remove_character(character)
    expect(place.characters).to eq []
  end
end
