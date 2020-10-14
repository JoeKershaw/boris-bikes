require 'bike'

class DockingStation
  attr_accessor :bike
  def release_bike
    raise("No Bikes!") if @bike == nil
    @bike
  end
  def dock_bike(bike)
    raise("Docking Station is full!") if @bike != nil
    @bike = bike
  end
end
