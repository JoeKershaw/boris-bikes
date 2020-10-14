require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  describe '#release_bike' do
    it 'docking station releases bike' do
      subject.dock_bike(Bike.new)
      expect(subject.release_bike).to be_instance_of Bike
      # count bike goes down by one
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
      20.times {subject.dock_bike(bike)}
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
