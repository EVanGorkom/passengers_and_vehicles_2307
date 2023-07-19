require "./lib/passenger.rb"

RSpec.describe Passenger do
  describe "#initialize" do
    it "can initialize" do
      charlie = Passenger.new({name: "Charlie", age: 18})
      taylor = Passenger.new({name: "Taylor", age: 12})

      expect(charlie).to be_an_instance_of(Passenger)
    end
  end

  describe "#adult?" do
    it "has readable attributes" do
      charlie = Passenger.new({name: "Charlie", age: 18})
      taylor = Passenger.new({name: "Taylor", age: 12})

      expect(charlie.age).to eq(18)
      expect(charlie.adult?).to be(true)
      expect(taylor.adult?).to be(false)
    end
  end

  describe "#drive?" do
    it "can determine who is driving" do
      charlie = Passenger.new({name: "Charlie", age: 18})
      taylor = Passenger.new({name: "Taylor", age: 12})
  
      expect(charlie.driver?).to be(false)
      charlie.drive
      expect(charlie.driver?).to be(true)
    end
  end
end