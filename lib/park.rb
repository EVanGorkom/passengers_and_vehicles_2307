require "./lib/vehicle"
require "./lib/passenger"

class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def cal_revenue
    @revenue = @admission_price * vehicle.num_adults
  end

end