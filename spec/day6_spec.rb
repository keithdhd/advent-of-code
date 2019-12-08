# frozen_string_literal: true

require_relative '../day6.rb'

RSpec.describe Day6 do

  describe '.orbit_count' do
    it 'counts the number of orbits' do
      expect(Day6.orbit_count({'b'=>['a']})).to eq(1)
      expect(Day6.orbit_count({'g'=>['b','a'], 'h'=>['g','b','a']})).to eq(5)
    end
  end 

  # describe '.orbit_builder' do
  #   it 'describes orbits for planets' do
  #     expect(Day6.orbit_builder(['a','b'])).to eq({'a'=> 'b'})
  #   end
  # end 

end

# {a=>b, b=>c, b=>g , g=>h, c=>d}
# {b=>[a], c =>[b,a], d=>[c,b,a], g=>[b,a], h=>[g,b,a]}