require './lib/garage'
require './lib/container'

class Van
  def initialize
    @docking_stations = []
    @garage = Garage.new
    @docking_station = false
  end

  def collect_bike(bike, docking_station)
    @docking_station = docking_station
    p "bike collected by van"
    fixed_bike = drive_to_garage(bike)
    drive_to_docking_station(fixed_bike)
  end

  def drive_to_garage(bike)
    p "in the van to garage"
    sleep(0.3)
    @garage.accept_bike(bike)
  end

  def drive_to_docking_station(bike)
    p "in the van to docking station"
    @docking_station.accept_bike(bike)
    @docking_station = false
  end

end
