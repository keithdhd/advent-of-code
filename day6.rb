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
    #from [['a', 'b'],['b','c']]
    #builds {'b'=>['a'], 'c'=>['b']}
    orbits.each_with_object({}) do |planet_pair, hash|
      hash[planet_pair[1]] = [planet_pair[0]]
    end
  end


    #needs to return {b => ['a'], c=> ['b', 'a']}
  def self.indirect_orbit_updater(direct_orbits)
    
  end

end