require './lib/docking_station'

docking_station = DockingStation.new(30)
bike = Bike.new
bike.report
docking_station.dock(bike)
# ----> Throw error
# ..... instead
van = Van.new
van.collect_bike(bike)
garage = Garage.new
van.drop_off_bike(garage, bike)
#take back
van.collect_bike(bike)
van.drop_off_bike(docking_station, bike)

# ----> how it works
# van.drop_off_bike(destination, bike)



