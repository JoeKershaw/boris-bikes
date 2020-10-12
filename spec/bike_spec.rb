require 'bike'


RSpec.describe Bike do
  it '#working?: bike is working' do
    expect(subject.working?).to eq true
  end
end
