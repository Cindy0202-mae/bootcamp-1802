require_relative "../lion"

describe Lion do
  describe "#initialize" do
    it "creates an Lion instance" do
      actual = Lion.new("Simba")
      expect(actual).to be_an_instance_of(Lion)
    end
  end

  describe "#name" do
    it "should return the lion name" do
      expected = "Simba"
      actual = Lion.new("Simba").name
      expect(actual).to eq(expected)
    end
  end

  describe "#eat" do
    it "should return a sentence like 'Simba eats a gazelle. Law of the jungle!'" do
      expected = "Simba eats a gazelle. Law of the jungle!"
      actual = Lion.new("Simba").eat("gazelle")
      expect(actual).to eq(expected)
    end
  end

  describe "#talk" do
    it "should return a sentence like 'Simba roars'" do
      expected = "Simba roars"
      actual = Lion.new("Simba").talk
      expect(actual).to eq(expected)
    end
  end

  describe "::phyla" do
    it "should return an array listing the species of the lion kingdom" do
      expected = ['Ecdysozoa', 'Lophotrochozoa', 'Deuterostomia', 'Bilateria', 'Non-Bilateria']
      actual = Lion.phyla
      expect(actual).to eq(expected)
    end
  end
end
