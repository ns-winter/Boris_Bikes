Dir[ __dir__ + '/lib/*.rb'].each {|file| require file}
ds = DockingStation.new
bike1 = Bike.new ; bike1.report_as_broken
bike2 = Bike.new ; bike2.report_as_broken
bike3 = Bike.new ; bike3.report_as_broken
bike4 = Bike.new ; bike4.report_as_broken
bike5 = Bike.new ; bike5.report_as_broken
ds.dock(bike1)
ds.dock(bike2)
ds.dock(bike3)
ds.dock(bike4)
ds.dock(bike5)
van = Van.new
van.collect_bikes_from_docking_station(ds)
ds.dock(Bike.new)
van.collect_bikes_from_docking_station(ds)
garage = Garage.new
van.deliver_to(garage)
garage.repair_bikes
van.pick_up_bikes_from_garage(garage)
van.deliver_to(ds)
