# frozen_string_literal: true

#This program runs a thing
class Day2

  def self.run(array)
    count = 0

    while count < array.length
      operator,
      index1,
      index2,
      update_value = array.values_at(count, count + 1, count + 2, count + 3)

      if operator == 1
        aggregate = array[index1] + array[index2]
        array[update_value] = aggregate
      elsif operator == 2
        aggregate = array[index1] * array[index2]
        array[update_value] = aggregate
        break if operator == 99
      end

      count += 4
    end

    array
  end
end
