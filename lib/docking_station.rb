class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20
  def initialize
    capacity = []
    @capacity = capacity
  end

  def release_bike
    if empty?
     raise "no bikes"
    else
      @capacity.pop
    end
  end

  def dock(bike)
    if full?
      raise "full up"
    else
      @capacity.push(bike)
    end
  end

  private

  def full?
    if @capacity.size >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @capacity == []
      true
    else
      false
    end
  end

end

docking_station = DockingStation.new
