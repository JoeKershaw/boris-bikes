require 'bikes'


RSpec.describe DockingStation do
  it '#release_bike: docking station releases bike' do
    expect(subject.release_bike).to eq nil
    # expect(subject.release_bike).to eq true
    # count bike goes down by one
  end
end
