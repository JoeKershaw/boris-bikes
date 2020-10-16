require 'garage'

RSpec.describe Garage do
  let(:bike) { double :bike }
  it '#initialize' do
    expect(subject.storage).to eq []
  end
  describe '#accept_bike' do
    it 'add a bike to the garage' do
      allow(bike).to receive(:working?).and_return false
      allow(bike).to receive(:fix).and_return true
      subject.accept_bike(bike)
      expect(subject.storage.length).to eq 1
    end
  end
  describe '#release_bike' do
    it 'releases a bike from the garage' do
      allow(bike).to receive(:working?).and_return true
      subject.accept_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'reduces the storage of the garage' do
      allow(bike).to receive(:working?).and_return true
      subject.accept_bike(bike)
      subject.release_bike
      expect(subject.storage.length).to eq 0
    end
  end
  # it '#apply_knowledge' do
  #   allow(bike).to receive(:fix).and_return true
  #   allow(bike).to receive(:working?).and_return false
  #   expect(subject.apply_knowledge(bike)).to eq true
  # end
end
