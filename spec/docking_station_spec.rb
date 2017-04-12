require "docking_station"


describe DockingStation do

  it { should respond_to(:release_bike) }

  it { should respond_to(:park_bike) }

  it "should release working bike" do
    expect(subject.release_bike).to be_working
  end



end
