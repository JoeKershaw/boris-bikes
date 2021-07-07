require './lib/bike.rb'
require './lib/van.rb'
require './lib/container.rb'

class DockingStation
  include Container

  attr_reader :bikes, :capacity

  def release_bike
    raise("No Bikes!") if @bikes.empty?
    @bikes.pop
  end

  def accept_bike(bike)
    raise("Docking Station is full!") if full?
    if !bike.working?
      @bikes << repair_bike(bike)
    else
      @bikes << bike
    end
  end

  def repair_bike(bike)
    p "taking bike for a fix"
    bike = Van.new.collect_bike(bike, self)
    p "bike is back"
    bike
  end

  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
