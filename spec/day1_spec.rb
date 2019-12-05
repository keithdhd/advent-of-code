# frozen_string_literal: true

require_relative '../day1.rb'

RSpec.describe Day1 do
  describe '#fuel_per_module' do
    it '#rounds down and subtracts 2' do
      ship = Day1.new([1, 2, 3, 4])
      expect(ship.fuel_per_module(12)).to eql(2)
      expect(ship.fuel_per_module(14)).to eql(2)
      expect(ship.fuel_per_module(1969)).to eql(654)
      expect(ship.fuel_per_module(100_756)).to eql(33_583)
    end
  end

  describe '#fuel_calculator' do
    it 'returns the correct calculation' do
      ship = Day1.new([12, 14, 1969, 100_756])
      expect(ship.fuel_calculator).to eql(34_241)
    end

    it 'runs the full input' do
      ship = Day1.new([
                        140_403, 114_038, 56_226, 132_100, 62_000, 111_395,
                        91_372, 126_850, 145_044, 79_273, 91_088, 84_429,
                        58_971, 107_626, 149_678, 85_268, 105_251, 115_850,
                        115_947, 74_982, 75_008, 97_761, 121_022, 148_319,
                        125_244, 138_640, 86_968, 144_443, 137_218, 139_558,
                        128_776, 53_593, 133_805, 64_245, 113_120, 63_085,
                        59_209, 51_671, 63_956, 139_163, 119_501, 77_432,
                        51_040, 137_313, 58_973, 64_708, 76_505, 108_041,
                        101_124, 133_219, 95_907, 57_933, 117_791, 76_209,
                        102_960, 90_848, 141_969, 91_297, 146_254, 84_585,
                        103_447, 83_172, 76_648, 111_340, 118_543, 52_957,
                        86_004, 131_965, 90_898, 90_909, 52_217, 144_674,
                        97_058, 72_387, 57_962, 147_792, 114_025, 100_193,
                        77_582, 146_708, 54_283, 143_979, 99_582, 149_890,
                        73_229, 56_045, 63_240, 124_091, 103_324, 125_187,
                        74_027, 120_344, 105_333, 100_939, 131_454, 109_570,
                        149_398, 140_535, 57_379, 138_385
                      ])
      expect(ship.fuel_calculator).to eq(3_380_731)
    end
  end
end
