# frozen_string_literal: true

# This does an orbit
module Day3
  def self.orbit_count(planets)
    planets.count-1
  end

  def self.orbit_builder(planets)
    #needs to returb {a => b, b=> c, c=>e}
    orbits = {}
    orbits[planets[0]] = 0
    planets[1..].each do |planet|
      orbits[planet] = 1
    end
    orbits
  end

end