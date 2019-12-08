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

  def self.orbit_builder(planets)
    #needs to return {a => b, b=> c, c=>e}
    planets[1..].each_with_object({}) do |planet, orbits|
      orbits[planet] = planet[]
    end
  end

end