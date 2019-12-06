# frozen_string_literal: true

# This does a Christmas
module Day3
  def self.valid_password_counter(passwords)
    passwords.map { |p| valid_password?(p) ? 1 : 0 }
             .sum
  end

  def self.valid_password?(password)
    pairs = password.digits
                    .reverse
                    .each_slice(2).to_a +
            password.digits.reverse[1..-2]
                    .each_slice(2).to_a

    diffs = pairs.map { |a, b| b - a }
    not_decreasing = diffs.map { |number| number >= 0 }
    diffs.include?(0) && not_decreasing.all?
  end
end
