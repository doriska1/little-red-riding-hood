require_relative '../src/wolf'
require_relative '../src/little_red_riding_hood'

describe Wolf do
  subject(:wolf) { described_class.new }
  subject(:character) { LittleRedRidingHood.new }


  it 'should have attribute :title - Wolf' do
    expect(wolf).to have_attributes(:title => "Wolf")
  end

  it 'eat person' do
    wolf.eat(character)
    expect(character.eaten).to eq true
  end
end