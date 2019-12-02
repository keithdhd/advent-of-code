# frozen_string_literal: true

# 1,0,0,0,99 becomes 2,0,0,0,99 (1 + 1 = 2).
# 2,3,0,3,99 becomes 2,3,0,6,99 (3 * 2 = 6).
# 2,4,4,5,99,0 becomes 2,4,4,5,99,9801 (99 * 99 = 9801).
# 1,1,1,4,99,5,6,0,99 becomes 30,1,1,4,2,5,6,0,99.

#This program runs a thing
class Day2
  def self.test
    "hey-yo! This is day 2 ya'll"
  end

  def self.run(array)
    counter = 0

    while counter < array.length

      operator = array[counter]
      first_reference = array[counter + 1]
      second_reference = array[counter + 2]
      update_value = array[counter + 3]

      if operator == 1
        aggregate = array[first_reference] + array[second_reference]
        array[update_value] = aggregate
      elsif operator == 2
        aggregate = array[first_reference] * array[second_reference]
        array[update_value] = aggregate
        break if operator == 99
      end

      counter += 4
    end

    array
  end

  def self.program
    [1, 0, 0, 3, 1, 1, 2, 3, 1, 3, 4, 3, 1, 5, 0, 3, 2, 13, 1, 19, 1, 19,
     10, 23, 2, 10, 23, 27, 1, 27, 6, 31, 1, 13, 31, 35, 1, 13, 35, 39,
     1, 39, 10, 43, 2, 43, 13, 47, 1, 47, 9, 51, 2, 51, 13, 55, 1, 5, 55,
     59, 2, 59, 9, 63, 1, 13, 63, 67, 2, 13, 67, 71, 1, 71, 5, 75, 2, 75,
     13, 79, 1, 79, 6, 83, 1, 83, 5, 87, 2, 87, 6, 91, 1, 5, 91, 95, 1, 95,
     13, 99, 2, 99, 6, 103, 1, 5, 103, 107, 1, 107, 9, 111, 2, 6, 111, 115,
     1, 5, 115, 119, 1, 119, 2, 123, 1, 6, 123, 0, 99, 2, 14, 0, 0]
  end
end
