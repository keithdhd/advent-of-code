# frozen_string_literal: true

require_relative '../day3.rb'

RSpec.describe Day3 do
  describe '.self.valid_password?' do
    it 'will do a thing' do
      expect(Day3.valid_password?(111_111)).to be true
      expect(Day3.valid_password?(223_450)).to be false
      expect(Day3.valid_password?(123_789)).to be false
      expect(Day3.valid_password?(888_999)).to be true
      expect(Day3.valid_password?(122_345)).to be true
      expect(Day3.valid_password?(112_323)).to be false
    end
  end

  describe '.self.valid_password_counter' do
    it 'will do a thing' do
      expect(Day3.valid_password_counter([
                                           111_111, 223_450,
                                           123_789, 888_999
                                         ])).to eql(2)

      expect(Day3.valid_password_counter([
                                           111_111, 223_450,
                                           123_789, 888_999,
                                           122_345, 112_323
                                         ])).to eql(3)
    end
  end
end
