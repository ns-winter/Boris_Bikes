class Garage
  attr_accessor :bikes, :capacity
  DEFAULT_CAPACITY = 50

  def initialize(capacity = DEFAULT_CAPACITY)
    bikes = []
    @bikes = bikes
    @capacity = capacity
  end

  def repair_bikes
    bikes.each{|bike| bike.fix}
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
