require 'rgl/adjacency'
require 'rgl/dijkstra'
require_relative 'planets'

solar_system = Planets::SOLAR_SYSTEM

maybe_root_sun = {}

parent_planets = solar_system.map {|planet_pair| planet_pair[0]}
planet_children = solar_system.map {|planet_pair| planet_pair[1]}

parent_planets.each_with_object({}) do |planet|
  maybe_root_sun[planet] = planet_children.include?(planet)
end

root_sun = maybe_root_sun.select {|k,v| v == false}.keys

graph = RGL::DirectedAdjacencyGraph.new

edge_weights = {}

solar_system.each_with_object({}) do |planet_pair|
  edge_weights[planet_pair] = 1
end

edge_weights.each do |(planet1, planet2), w| 
  graph.add_edge(planet1, planet2)
end

total_orbits = 0

root_sun.each do |sun|
  solar_system.each do |planet_pair|
    number_of_planets = graph.dijkstra_shortest_path(edge_weights, sun, planet_pair[1]).nil? ? 
                        1 : graph.dijkstra_shortest_path(edge_weights, sun, planet_pair[1]).count
    orbits = number_of_planets - 1
    puts "Distance between #{sun} and #{planet_pair[1]} is #{orbits}" 
    total_orbits += orbits
  end
end

puts "Total orbits in solar system is  #{total_orbits}"
