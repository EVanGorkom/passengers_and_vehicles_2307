require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Passenger do
  describe "#initialize" do
    it "can initialize" do
      yellowstone = Park.new("Yellowstone", 35)

      expect(yellowstone).to be_an_instance_of(Park)
    end

    it "has readable attributes" do
      yellowstone = Park.new("Yellowstone", 35)

      expect(yellowstone.name).to eq("Yellowstone")
      expect(yellowstone.admission_price).to eq(35)
    end
  end

  describe "#add_vehicle" do
    it "can add a vehicle to the vehicles array" do
      yellowstone = Park.new("Yellowstone", 35)
      vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({name: "Charlie", age: 18})
      jude = Passenger.new({name: "Jude", age: 20})
      taylor = Passenger.new({name: "Taylor", age: 12})
      vehicle_1.add_passenger(charlie)
      vehicle_1.add_passenger(jude)    
      vehicle_1.add_passenger(taylor)  


      yellowstone.add_vehicle(vehicle_1)
      expect(yellowstone.vehicles).to eq([vehicle_1])
    end
  end

  describe "#cal_revenue" do
    it "can calculate the revenue earned" do
      yellowstone = Park.new("Yellowstone", 35)
      vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({name: "Charlie", age: 18})
      jude = Passenger.new({name: "Jude", age: 20})
      taylor = Passenger.new({name: "Taylor", age: 12})
      vehicle_1.add_passenger(charlie)
      vehicle_1.add_passenger(jude)    
      vehicle_1.add_passenger(taylor) 

      expect(yellowstone.cal_revenue).to eq(70)
    end
  end
end