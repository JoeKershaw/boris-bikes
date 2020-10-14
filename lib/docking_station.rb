require 'bike'

class DockingStation
  attr_accessor :bikes
  DEFAULT_CAPACITY = 20
  def initialize()
    @bikes = []
  end
  def release_bike
    raise("No Bikes!") if @bikes.empty?
    @bikes.pop
  end
  def dock_bike(bike)
    raise("Docking Station is full!") if self.full?
    @bikes << bike
    bike
  end
  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY ? true : false
  end
end
