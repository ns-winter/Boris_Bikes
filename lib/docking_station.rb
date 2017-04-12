class DockingStation
attr_reader :bike

  def release_bike
    if @bike == nil #Guard condition if no bikes present
      raise RuntimeError, "No Bikes!"
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end

end
