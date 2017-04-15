class Van
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 5

  def initialize(capacity = DEFAULT_CAPACITY)
    bikes = []
    @bikes = bikes
    @capacity = capacity
  end

  def collect_bikes_from_docking_station(target)
    until full?
      case
      when target.bikes.size == 0
        raise "No bikes in docking station"
      when target.bikes.all?{|bike|bike.working? == true}
        raise "All docked bikes are working"
      else
        bike = target.bikes
        if bike[-1].working? == false
          @bikes.push bike[-1]; bike.pop
        else
          bike.insert(0, target.pop)
        end
      end
    end
    return "collection done"
  end

  def deliver_to(target)
    until empty?
      case
      when target.bikes.size >= target.capacity
      raise "Container is full up"
      else
      bike = target.bikes
      bike.push @bikes[-1]
      @bikes.pop
      end
    end
    return "delivery complete"
  end

  def pick_up_bikes_from_garage(target)
    until full?
      case
      when target.bikes.size == 0
        raise "No bikes in garage"
      when target.bikes.all?{|bike|bike.working? == false}
        raise "Only broken bikes in garage"
      else
        bike = target.bikes
        if bike[-1].working? == true
          @bikes.push bike[-1]; bike.pop
        else
          bike.insert(0, target.pop)
        end
      end
    end
    return "pick-up complete"
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
