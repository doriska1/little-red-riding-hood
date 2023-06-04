require_relative '../src/hunter'
require_relative '../src/little_red_riding_hood'

describe Hunter do
  subject(:hunter) { described_class.new }
  subject(:character) { LittleRedRidingHood.new }


  it 'should have attribute :title - Hunter' do
    expect(hunter).to have_attributes(:title => "Hunter")
  end

  it 'save person' do
    character.eaten = true
    hunter.save_person(character)
    expect(character.eaten).to eq false
  end
end