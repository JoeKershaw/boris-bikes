require 'bike'

class DockingStation
  attr_accessor :bikes
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
    @bikes.length >= 20 ? true : false
  end
end
