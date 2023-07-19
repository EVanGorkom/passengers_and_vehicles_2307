class Passenger
  attr_reader :age, :drive

  def initialize(passenger_info)
    @name = passenger_info[:name]
    @age = passenger_info[:age]
    @drive = nil
  end

  def adult?
    if @age >= 18
      true 
    else
      false
    end
  end

  def drive
    @drive = true
  end

  def driver?
    true if @drive == true
  end

end