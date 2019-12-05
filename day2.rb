# frozen_string_literal: true

# This program runs a thing
class Day2
  def self.run(items)
    count = 0

    while count < items.length
      operation, index1, index2,
      update_value = items.values_at(count, count + 1, count + 2, count + 3)

      break if operation == 99

      operator = operation == 1 ? '+' : '*'
      items[update_value] = items[index1].send(operator, items[index2])

      count += 4
    end

    items
  end
end
