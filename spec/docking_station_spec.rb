require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  describe '#initialize' do
    it 'takes a non-default capacity' do
      big_docking_station = DockingStation.new(30)
      expect(big_docking_station.capacity).to eq 30
    end
    it 'keeps the default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end
  describe '#release_bike' do
    it 'docking station releases bike' do
      subject.dock_bike(Bike.new)
      expect(subject.release_bike).to be_instance_of Bike
    end
    it 'releases a working bike' do
      bike = Bike.new
      expect(bike.working?).to eq true
    end
    it 'raises an error if there are no bikes at the docking station' do
      bike = Bike.new
      #subject.dock_bike(bike)
      expect { subject.release_bike }.to raise_error("No Bikes!")
    end
  end
  describe '#dock_bike' do
    it 'raises an error if the docking station is full' do
      bike = Bike.new
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
      expect { subject.dock_bike(bike)}.to raise_error("Docking Station is full!")
    end
    it 'docks bike at station' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end
  end

  it '.bike: checks if the bike is at the dockingstation' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes[-1]).to eq bike
  end

end
