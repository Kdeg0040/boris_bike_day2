class DockingStation

  # def initialize
  #   @storage = []
  # end

  def release_bike
   Bike.new
  end

  def dock(bike)
    @bike = bike
  end
attr_reader :bike
end
