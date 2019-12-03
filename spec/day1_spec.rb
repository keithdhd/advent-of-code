# frozen_string_literal: true

require_relative '../day1.rb'

RSpec.describe Day1 do

  describe '#fuel_per_module' do
    it '#rounds down and subtracts 2' do
      ship = Day1.new([1,2,3,4])
      expect(ship.fuel_per_module(12)).to eql(2)
      expect(ship.fuel_per_module(14)).to eql(2)
      expect(ship.fuel_per_module(1969)).to eql(654)
      expect(ship.fuel_per_module(100756)).to eql(33583)
    end
  end

  describe '#fuel_calculator' do
    it 'returns the correct calculation' do
      ship = Day1.new([12, 14, 1969, 100756])
      expect(ship.fuel_calculator).to eql(34241)
    end

    it 'runs the full input' do
      ship = Day1.new([
        140403,114038,56226,132100,62000,111395,91372,126850,145044,79273,91088,
        84429,58971,107626,149678,85268,105251,115850,115947,74982,75008,97761,
        121022,148319,125244,138640,86968,144443,137218,139558,128776,53593,
        133805,64245,113120,63085,59209,51671,63956,139163,119501,77432,51040,
        137313,58973,64708,76505,108041,101124,133219,95907,57933,117791,76209,
        102960,90848,141969,91297,146254,84585,103447,83172,76648,111340,118543,
        52957,86004,131965,90898,90909,52217,144674,97058,72387,57962,147792,
        114025,100193,77582,146708,54283,143979,99582,149890,73229,56045,63240,
        124091,103324,125187,74027,120344,105333,100939,131454,109570,149398,
        140535,57379,138385
      ])
      expect(ship.fuel_calculator).to eq(3380731)
    end
  end

end