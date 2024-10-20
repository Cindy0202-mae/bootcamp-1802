require_relative "../warthog"

describe Warthog do
  describe "#initialize" do
    it "creates an Warthog instance" do
      actual = Warthog.new("Pumbaa")
      expect(actual).to be_an_instance_of(Warthog)
    end
  end

  describe "#name" do
    it "should return the warthog name" do
      expected = "Pumbaa"
      actual = Warthog.new("Pumbaa").name
      expect(actual).to eq(expected)
    end
  end

  describe "#eat" do
    it "should return a sentence like 'Pumbaa eats a scorpion.'" do
      expected = "Pumbaa eats a scorpion."
      actual = Warthog.new("Pumbaa").eat("scorpion")
      expect(actual).to eq(expected)
    end
  end

  describe "#talk" do
    it "should return a sentence like 'Pumbaa grunts'" do
      expected = "Pumbaa grunts"
      actual = Warthog.new("Pumbaa").talk
      expect(actual).to eq(expected)
    end
  end

  describe "::phyla" do
    it "should return an array listing the species of the warthog kingdom" do
      expected = ['Ecdysozoa', 'Lophotrochozoa', 'Deuterostomia', 'Bilateria', 'Non-Bilateria']
      actual = Warthog.phyla
      expect(actual).to eq(expected)
    end
  end
end
