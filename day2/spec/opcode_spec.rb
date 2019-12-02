# frozen_string_literal: true

require_relative '../day2.rb'

RSpec.describe Day2 do

  describe '.self.run' do
    it 'adds puts to screen' do
      expect(Day2.run([1, 0, 0, 0, 99])).to eql([2, 0, 0, 0, 99])
      expect(Day2.run([2, 3, 0, 3, 99])).to eql([2, 3, 0, 6, 99])
      expect(Day2.run([2, 4, 4, 5, 99, 0])).to eql([2, 4, 4, 5, 99, 9801])
      expect(Day2.run([1, 1, 1, 4, 99, 5, 6, 0, 99])).to eql([30, 1, 1, 4, 2, 5, 6, 0, 99])
    end
  end
end
