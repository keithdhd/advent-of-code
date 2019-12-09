require 'rgl/adjacency'
require 'rgl/dijkstra'


solar_system = [["COM", "B"], ["B", "C"], ["C", "D"], ["D", "E"], ["B", "G"], 
                ["G", "H"], ["D", "I"], ["E", "J"], ["J", "K"], ["K", "L"],
                ["E", "F"]] 

maybe_root_sun = {}

parent_planets = solar_system.map {|planet_pair| planet_pair[0]}
planet_children = solar_system.map {|planet_pair| planet_pair[1]}

parent_planets.each_with_object({}) do |planet|
  maybe_root_sun[planet] = planet_children.include?(planet)
end

root_sun =  maybe_root_sun.key(false)

graph = RGL::DirectedAdjacencyGraph.new

edge_weights = {}

solar_system.each_with_object({}) do |planet_pair|
  edge_weights[planet_pair] = 1
end

edge_weights.each do |(planet1, planet2), w| 
  graph.add_edge(planet1, planet2)
end

total_orbits = 0

solar_system.each do |planet_pair|
  orbits = graph.dijkstra_shortest_path(edge_weights, root_sun, planet_pair[1]).count - 1
  puts "Distance between #{root_sun} and #{planet_pair[1]} is #{orbits}" 
  total_orbits += orbits
end

puts "Total orbits in solar system is  #{total_orbits}"
