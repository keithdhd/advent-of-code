# frozen_string_literal: true

require_relative '../day3.rb'

RSpec.describe Day3 do

  describe '.self.valid_password?' do
    it 'will do a thing' do
      expect(Day3.valid_password?(111111)).to be true
      expect(Day3.valid_password?(223450)).to be false
      expect(Day3.valid_password?(123789)).to be false
      expect(Day3.valid_password?(888999)).to be true
      expect(Day3.valid_password?(135679)).to be false
    end
  end

  describe '.self.valid_password_counter' do
    it 'will do a thing' do
      expect(Day3.valid_password_counter([111111, 223450, 123789, 888999])).to eql(2)
    end
  end

end
