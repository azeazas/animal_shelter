require('spec_helper')

describe(Adopter) do
  describe('#name') do
    it('tells you its name') do
      test_adopter = Adopter.new({:name => "Jen", :phone => "5038675309", :type_preference => "cat", :breed_preference => "Turkish Angora", :id => nil})
      expect(test_adopter.name()).to(eq("Mika"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Adopter.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds an adopter to the array of saved adopters') do
      test_adopter = Adopter.new({:name => "Jen", :phone => "5038675309", :type_preference => "cat", :breed_preference => "Turkish Angora", :id => nil})
      test_adopter.save()
      expect(Adopter.all()).to(eq([test_adopter]))
    end
  end

  describe("#==") do
    it("is the same adopter if it has the same description") do
      test_adopter1 = Adopter.new({:name => "Jen", :phone => "5038675309", :type_preference => "cat", :breed_preference => "Turkish Angora", :id => nil})
      test_adopter2 = Adopter.new({:name => "Jen", :phone => "5038675309", :type_preference => "cat", :breed_preference => "Turkish Angora", :id => nil})
      expect(test_adopter1).to(eq(test_adopter2))
    end
  end

end