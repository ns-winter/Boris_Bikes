class DockingStation
attr_reader :bike

  def release_bike
    if @bike == nil #Guard condition if no bikes present
      raise RuntimeError, "No Bikes!"
    else
      @bike
    end
  end

  def dock(bike)
    raise "Station Full Up!" if @bike
    @bike = bike
  end

end
