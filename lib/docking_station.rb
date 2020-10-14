require 'bike'

class DockingStation
  attr_accessor :bike
  def release_bike
    if @bike == nil
      raise("ERRRRRRROOORRRRRR")
    else
      @bike
    end
  end
  def dock_bike(bike)
    @bike = bike
  end
end
