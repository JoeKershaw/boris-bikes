require './lib/bike.rb'

class DockingStation
  attr_accessor :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  def release_bike
    raise("No Bikes!") if @bikes.empty?
    bike = @bikes.pop
    raise("This bike is broken!") if !bike.working?
    bike
  end
  def dock_bike(bike)
    raise("Docking Station is full!") if full?
    @bikes << bike
    bike
  end
  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
