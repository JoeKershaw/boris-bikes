require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  it '#release_bike: docking station releases bike' do
    expect(subject.release_bike).to be_instance_of Bike
    # count bike goes down by one
  end
  it '#release_bike: releases a working bike' do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  it '#dock_bike: docks bike at station' do
    bike = subject.release_bike
    expect(subject.dock_bike(bike)).to eq "Bike docked!"
  end
  it '#contains_bike: checks if there is a bike at the dockingstation' do
    bike = subject.release_bike
    subject.dock_bike(bike)
    expect(subject.contains_bike(bike)).to eq bike
  end
end
