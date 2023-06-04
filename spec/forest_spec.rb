require_relative '../src/forest'
require_relative '../src/character'

describe Forest do
  subject(:forest) { described_class.new }
  subject(:character) { build(:character) }

  it 'should have attribute :title - Forest' do
    expect(forest).to have_attributes(:title => "Forest")
  end

  describe 'check parent class methods' do
    it 'add new character to forest' do
      forest.add_character(character)
      expect(forest.characters).to eq [character]
    end

    it 'remove character from forest' do
      forest.add_character(character)
      forest.remove_character(character)
      expect(forest.characters).to eq []
    end
  end
end