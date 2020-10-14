require 'bike'

class DockingStation
  def initialize()
    @docked_bikes = []
  end
  def release_bike
    return Bike.new
  end
  def dock_bike(bike)
    @docked_bikes << bike
    "Bike docked!"
  end
  def contains_bike(bike)
  @docked_bikes.include?(bike) ? bike : "Your bike isn't here!"
  end
end
