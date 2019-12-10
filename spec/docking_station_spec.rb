require 'docking_station'
require 'bike'

describe Docking_Station do
  let(:docking_station) { described_class.new() }
  let(:bike) { Bike.new }

    describe "#load_bike" do

      it "raises an error if a bike is not working" do
        allow(bike).to receive(:working?) { false }
        expect{ docking_station.load_bike(bike) }.to raise_error "Error: cannot load a broken bike"
      end

      it "takes a bike and loads in a dock" do
        # bike = Bike.new
        expect(docking_station.load_bike(bike)).to eq [bike]
      end
    end

    describe "#release" do
      it "releases a bike from a docking station" do
        allow(bike).to receive(:working?) { true }
        docking_station.load_bike(bike)
        expect(docking_station.release(bike)).to eq []
      end
    end
end
