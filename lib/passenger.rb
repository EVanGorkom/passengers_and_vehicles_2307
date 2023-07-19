class Passenger
  attr_reader :age, :drive

  def initialize(passenger_info)
    @name = passenger_info[:name]
    @age = passenger_info[:age]
    @drive = nil
  end

  def adult?
    true if @age >= 18
  end

  def drive
    @drive = true
  end

  def driver?
    true if @drive == true
  end

end