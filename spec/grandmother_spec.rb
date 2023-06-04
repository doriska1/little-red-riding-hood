require_relative '../src/grandmother'

describe Grandmother do
  subject(:grandmother) { described_class.new }

  it 'should have attribute :title - Grandmother, :eaten - false' do
    expect(grandmother).to have_attributes(:title => "Grandmother", :eaten => false)
  end

  describe 'check eatable module' do
    it 'if eaten is false?' do
      expect(grandmother.eatable?).to eq true
    end

    it 'if eaten is true' do
      grandmother.eaten = true
      expect(grandmother.eatable?).to eq false
    end

    it 'eat grandmother' do
      grandmother.eaten!
      expect(grandmother.eaten).to eq true
    end
  end
end