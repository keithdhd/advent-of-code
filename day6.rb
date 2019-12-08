# frozen_string_literal: true

# This does an orbit
module Day6
  def self.orbit_count(orbits)
    total = 0
    orbits.each do |orbit, planet|
      total += planet.count
    end
    total
  end

  def self.direct_orbit_builder(orbits)
    orbits.each_with_object({}) do |planet_pair, hash|
      hash[planet_pair[1]] = [planet_pair[0]]
    end
  end

  def self.indirect_orbit_updater(orbits)
    final = {}
    orbits.each do |key, value|
      final[key] = orbits[key]
      index = value.first
      final[key] = final[key] + orbits[index] if orbits[index]
    end
    final
  end

end