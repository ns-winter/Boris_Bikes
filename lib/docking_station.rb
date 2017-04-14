class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    bikes = []
    @bikes = bikes
    @capacity = capacity
  end

  def release_bike
    if empty?
     raise "no bikes"
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if full?
      raise "full up"
    else
      @bikes.push(bike)
    end
  end

  private

  def full?
    if @bikes.size >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes == []
      true
    else
      false
    end
  end

end
