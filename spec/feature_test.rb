require_relative '../lib/bike.rb'
require_relative '../lib/docking_station.rb'

ds = DockingStation.new
b1 = Bike.new

p ds.dock(b1)
