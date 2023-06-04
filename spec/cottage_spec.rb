require_relative '../src/cottage'
require_relative '../src/character'

describe Cottage do
  subject(:cottage) { described_class.new }
  subject(:character) { build(:character) }

  it 'should have attribute :title - Cottage' do
    expect(cottage).to have_attributes(:title => "Cottage")
  end

  describe 'check parent class methods' do
    it 'add new character to cottage' do
      cottage.add_character(character)
      expect(cottage.characters).to eq [character]
    end

    it 'remove character from cottage' do
      cottage.add_character(character)
      cottage.remove_character(character)
      expect(cottage.characters).to eq []
    end
  end
end