# frozen_string_literal: true

#This program runs a thing
class Day2

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
end
