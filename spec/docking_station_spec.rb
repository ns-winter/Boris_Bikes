require "docking_station"


describe DockingStation do

  it { should respond_to(:release_bike) }

  it { should respond_to(:dock).with(1).argument }

  it "should release working bike" do
    if @bike != nil
      expect(subject.release_bike).to be_working
    end
  end

  it "should raise an error if trying to release a bike with none present" do
    if @bike == nil
      expect {subject.release_bike}.to raise_error("No Bikes!")
    end
  end

end

  RSpec.describe DockingStation.new do
  it "should raise an error if trying to dock a bike when one is already there" do
    if @bike
      expect { subject.dock Bike.new }.to raise_error("Station Full Up!")
    end
  end



end
