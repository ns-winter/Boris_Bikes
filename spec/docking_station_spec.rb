require 'docking_station'

describe DockingStation do
  it " creates an instance of DockingStation" do
    expect(DockingStation.new).to be_an_instance_of(DockingStation)
  end

 it {is_expected.to respond_to(:release_bike)}

 it 'expects DockingStation to get a bike' do
   subject.dock(Bike.new)
   expect(subject.release_bike).to be_an_instance_of(Bike)
end

it 'expects bike to be working' do
  subject.dock(Bike.new)
  expect(subject.release_bike.working?).to eq true
 end

 it 'expects docking_station to be initialized with an argument' do
   docking_station = DockingStation.new
 expect(docking_station).to respond_to(:dock).with(1).argument
 end

 it 'expects docking_station to respond to the dock method' do
   docking_station = DockingStation.new
   expect(docking_station).to respond_to(:dock)
 end

 it 'should raise an error when docking station is empty' do
   if @capacity == nil
     expect{subject.release_bike}.to raise_error("no bikes")
  end
end

  it 'should raise an error when docking station is full' do
     DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect{  subject.dock(Bike.new)}.to raise_error("full up")
  end

 end
