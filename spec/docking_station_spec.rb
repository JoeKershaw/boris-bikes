require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  it '#release_bike: docking station releases bike' do
    subject.dock_bike(Bike.new)
    expect(subject.release_bike).to be_instance_of Bike
    # count bike goes down by one
  end
  it '#release_bike: releases a working bike' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
  it '#dock_bike: docks bike at station' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  it '.bike: checks if the bike is at the dockingstation' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
  it '.release_bike: raises an error if there are no bikes at the docking station' do
    bike = Bike.new
    #subject.dock_bike(bike)
    expect { subject.release_bike }.to raise_error("No Bikes!")
  end
  it '.dock_bike: raises an error if the docking station is full' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect { subject.dock_bike(bike)}.to raise_error("Docking Station is full!")
  end
end
