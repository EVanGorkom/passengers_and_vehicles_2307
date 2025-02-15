require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Passenger do
  describe "#initialize" do
    it "can initialize" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it "has readable attributes" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "can determine if the car is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be(false)
      vehicle.speed
      expect(vehicle.speeding?).to be(true)
    end
  end

  describe "#add_passenger" do
    it "can add a passenger to the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({name: "Charlie", age: 18})
      jude = Passenger.new({name: "Jude", age: 20})
      taylor = Passenger.new({name: "Taylor", age: 12})

      expect(vehicle.passengers).to eq([])
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor)  
      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end

  describe "#num_adults" do
    it "can count the number of adults in the car" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({name: "Charlie", age: 18})
      jude = Passenger.new({name: "Jude", age: 20})
      taylor = Passenger.new({name: "Taylor", age: 12})
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)    
      vehicle.add_passenger(taylor)  

      expect(vehicle.num_adults).to eq(2)
    end
  end

end