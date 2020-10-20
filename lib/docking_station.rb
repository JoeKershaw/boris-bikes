require './lib/bike.rb'
require './lib/van.rb'

class DockingStation
  attr_accessor :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @van = Van.new
  end
  def release_bike
    raise("No Bikes!") if @bikes.empty?
    bike = @bikes.pop
    bike
  end

  def accept_bike(bike)
    raise("Docking Station is full!") if full?
    if !bike.working?
      retire_bike(bike)
    else
      @bikes << bike
    end
  end

  def retire_bike(bike)
    p "taking bike for a fix"
    @van.collect_bike(bike, self)
    p "bike is back"
  end

  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
