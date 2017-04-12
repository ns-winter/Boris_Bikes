require "docking_station"


describe DockingStation do

  it { should respond_to(:release_bike) }


  it { should respond_to(:dock).with(1).argument }

  it "should release working bike" do
    if @bike != nil
      expect(subject.release_bike).to be_working
    end
  end

  it "should raise an error" do
    if @bike == nil
      expect {subject.release_bike}.to raise_error("No Bikes!")
    end
  end



end
