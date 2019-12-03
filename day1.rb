# frozen_string_literal: true

#This program runs a thing
class Day1

  def initialize(fuel_modules)
    @fuel_modules = fuel_modules
  end

  def fuel_calculator
    running_total = 0

    @fuel_modules.each do |fuel_module|
      fuel_required = fuel_per_module(fuel_module)
      running_total += fuel_required
    end

    running_total
  end

  def fuel_per_module(module_mass) 
    module_mass / 3 - 2
  end

end