require "./lib/passenger"

class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = 0
    @passengers = []
  end

  def speed
    @speed = 100
  end

  def speeding?
    if @speed >= 60
      true
    else
      false
    end
  end

  def add_passenger(new_passenger)
    @passengers << new_passenger
  end

  def num_adults
    adults = 0
    @passengers.each do |passenger|
      if passenger.adult? == true
        adults += 1
      else
      end
    end
    adults
  end
  
end