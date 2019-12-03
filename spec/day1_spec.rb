# frozen_string_literal: true

require_relative '../day1.rb'

RSpec.describe Day1 do

  describe '.self.fuel_rounder' do
    it 'rounds down and subtracts 2' do
      expect(Day1.fuel_rounder(12)).to eql(2)
      expect(Day1.fuel_rounder(14)).to eql(2)
      expect(Day1.fuel_rounder(1969)).to eql(654)
      # expect(Day1.fuel_rounder(100756)).to eql(33583)
    end
  end
end