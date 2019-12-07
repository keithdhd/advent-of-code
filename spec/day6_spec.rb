# frozen_string_literal: true

require_relative '../day6.rb'

RSpec.describe Day6 do

  describe '.orbit_count' do
    it 'counts the number of orbits' do
      expect(Day6.orbit_count(['a','b'])).to eq(1)
    end
  end 

  describe '.orbit_builder' do
    it 'describes orbits for planets' do
      expect(Day6.orbit_builder(['a','b'])).to eq({'a'=>0, 'b'=>1})
      expect(Day6.orbit_builder(['a','b'])).to eq({'a'=>0, 'b'=>1})
    end
  end 

end