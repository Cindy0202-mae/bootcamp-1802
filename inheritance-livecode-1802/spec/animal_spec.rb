require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "creates an Animal instance" do
      # expected = Animal
      # actual = Animal.new("Simba").class
      # expect(actual).to eq(expected)
      actual = Animal.new("Simba")
      # expect(actual).to be_a(Animal)
      # expect(actual).to be_an(Animal)
      expect(actual).to be_an_instance_of(Animal)
    end
  end

  describe "#name" do
    it "should return the animal name" do
      expected = "Simba"
      actual = Animal.new("Simba").name
      expect(actual).to eq(expected)
    end
  end

  describe "::phyla" do
    it "should return an array listing the species of the animal kingdom" do
      expected = ['Ecdysozoa', 'Lophotrochozoa', 'Deuterostomia', 'Bilateria', 'Non-Bilateria']
      actual = Animal.phyla
      expect(actual).to eq(expected)
    end
  end
end
