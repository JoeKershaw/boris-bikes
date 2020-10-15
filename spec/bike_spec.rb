require 'bike'


RSpec.describe Bike do
  it '#working?: bike is working' do
    expect(subject.working?).to eq true
  end
  it '#report' do
    subject.report
    expect(subject.working?).to eq false
  end
end
