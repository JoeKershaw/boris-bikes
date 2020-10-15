require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  let(:bike) { double :bike }
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
    it 'docking station releases bike if working' do
      allow(bike).to receive(:working?).and_return true
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
#    it 'releases a working bike' do
#      allow(bike).to receive(:working?).and_return true
#      expect(bike.working?).to eq true
#    end
    it 'raises an error if there are no bikes at the docking station' do
      expect { subject.release_bike }.to raise_error("No Bikes!")
    end
    it 'raises an error if the bike is broken' do
      allow(bike).to receive(:working?).and_return false
      subject.dock_bike(bike)
      expect { subject.release_bike }.to raise_error("This bike is broken!")
    end
  end
  describe '#dock_bike' do
    it 'raises an error if the docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
      expect { subject.dock_bike(bike)}.to raise_error("Docking Station is full!")
    end
    it 'docks bike at station' do
      expect(subject.dock_bike(bike)).to eq bike
    end
    it 'accepts any bike, broken or not' do
      allow(bike).to receive(:working?).and_return false
      expect(subject.dock_bike(bike)).to eq bike
    end
  end

  it '.bike: checks if the bike is at the dockingstation' do
    subject.dock_bike(bike)
    expect(subject.bikes[-1]).to eq bike
  end

end
