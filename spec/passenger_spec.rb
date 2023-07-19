require "./lib/passenger"

RSpec.describe Passenger do
  describe "#initialize" do
    it "can initialize" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it "has readable attributes" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      
    end
  end
end