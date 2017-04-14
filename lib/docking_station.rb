class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    bikes = []
    @bikes = bikes
    @capacity = capacity
  end

  def release_bike
    if bikes.empty? || bikes.all?{|bike| bike.working? == false}
      raise "no working bikes"
    else until bikes[-1].working? == true
      @bikes.insert(0, @bikes.pop)
    end
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
    if @bikes.size >= @capacity
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
