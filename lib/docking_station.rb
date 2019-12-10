
class Docking_Station

  def initialize(bike = Bike.new)
    @bike = bike
    @dock_array = []
  end

  def load_bike(bike)
    p @bike.working?
    raise "Error: cannot load a broken bike" if @bike.working?

    @dock_array << bike
  end

  def release(bike)
    p @dock_array.pop()
    p @dock_array
    return @dock_array
  end

  def number_of_bikes
    @dock_array.count
  end
end
