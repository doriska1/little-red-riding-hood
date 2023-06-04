# frozen_string_literal: true

require_relative '../src/little_red_riding_hood'

describe LittleRedRidingHood do
  subject(:little_red_riding_hood) { described_class.new }

  it 'should have attribute :title - Little Red Riding Hood, :eaten - false' do
    expect(little_red_riding_hood).to have_attributes(title: 'Little Red Riding Hood', eaten: false)
  end

  describe 'check eatable module' do
    it 'if eaten is false?' do
      expect(little_red_riding_hood.eatable?).to eq true
    end

    it 'if eaten is true' do
      little_red_riding_hood.eaten = true
      expect(little_red_riding_hood.eatable?).to eq false
    end

    it 'eat little_red_riding_hood' do
      little_red_riding_hood.eaten!
      expect(little_red_riding_hood.eaten).to eq true
    end
  end
end
