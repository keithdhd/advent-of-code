# frozen_string_literal: true

#This does a Christmas

class Day3

  def self.valid_password_counter(passwords)
    valid_passwords = passwords.map {|password| self.valid_password?(password) ? 1 : 0}
    valid_passwords.sum
  end

  def self.valid_password?(password)
    pairs = password.digits.reverse.each_slice(2).to_a + password.digits.reverse[1..4].each_slice(2).to_a
    diffs = pairs.map {|a,b| b - a }
    not_decreasing = diffs.map {|number| number >= 0}
    diffs.include? 0 and not_decreasing.all?
  end

end