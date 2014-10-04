Customer = Struct.new(:name, :address) do
  def getName
    return name
  end
end

class StructureExample < Example

  def initialize
    @exampleName = 'Structure Example'
  end

  private
  def runSpecificExample
    defineStructure
  end

  def defineStructure

    tomek = Customer.new("Tomek", "123 Main")
    puts tomek.address
    tomek.each {
    |x|
      puts x
    }
  end
end