# frozen_string_literal: true

#This program runs a thing
class Day2

  def self.run(items)
    count = 0

    while count < items.length
      operator,
      index1,
      index2,
      update_value = items.values_at(count, count + 1, count + 2, count + 3)

      if operator == 1
        aggregate = items[index1] + items[index2]
        items[update_value] = aggregate
      elsif operator == 2
        aggregate = items[index1] * items[index2]
        items[update_value] = aggregate
        break if operator == 99
      end

      count += 4
    end

    items
  end
end
