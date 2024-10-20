require_relative "../meerkat"

describe Meerkat do
  describe "#initialize" do
    it "creates an Meerkat instance" do
      actual = Meerkat.new("Timon")
      expect(actual).to be_an_instance_of(Meerkat)
    end
  end

  describe "#name" do
    it "should return the meerkat name" do
      expected = "Timon"
      actual = Meerkat.new("Timon").name
      expect(actual).to eq(expected)
    end
  end

  describe "#eat" do
    it "should return a sentence like 'Timon eats a scorpion." do
      expected = "Timon eats a scorpion."
      actual = Meerkat.new("Timon").eat("scorpion")
      expect(actual).to eq(expected)
    end
  end

  describe "#talk" do
    it "should return a sentence like 'Timon chirps'" do
      expected = "Timon chirps"
      actual = Meerkat.new("Timon").talk
      expect(actual).to eq(expected)
    end
  end

  describe "::phyla" do
    it "should return an array listing the species of the meerkat kingdom" do
      expected = ['Ecdysozoa', 'Lophotrochozoa', 'Deuterostomia', 'Bilateria', 'Non-Bilateria']
      actual = Meerkat.phyla
      expect(actual).to eq(expected)
    end
  end
end
