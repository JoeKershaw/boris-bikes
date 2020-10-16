require './lib/van'

RSpec.describe Van do
  describe '#collect_bike' do
    it 'collect bike' do
      is_expected.to respond_to(:collect_bike).with(1).argument
    end
  end
  describe '#dropoff_bike' do
    it 'dropoff_bike at a given destination' do
      is_expected.to respond_to(:dropoff_bike).with(2).argument
    end
  end
end
