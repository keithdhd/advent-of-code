# frozen_string_literal: true

#This program runs a thing
class Day1

  def initialize(fuel_modules)
    @fuel_modules = fuel_modules
  end

  def fuel_calculator
    @fuel_modules.reduce(0) do |running_total, fuel_module| 
      fuel_required = fuel_per_module(fuel_module)
      running_total + fuel_required
    end
  end

  def fuel_per_module(module_mass) 
    module_mass / 3 - 2
  end

end