require 'bike'

describe Bike do
  describe "#working?" do
    let (:bike) { described_class.new }

    it "throws an error if bike not working" do
      allow(Kernel).to receive(:rand).and_return(49)
      expect(bike.working?).to be false
      # raise_error("Error: bike not working")
    end


  end
end
