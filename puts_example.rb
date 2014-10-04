class PutsExample <Example

  attr_accessor :testString

  def initialize
    @exampleName = 'PutsExample'
  end

  def runSpecificExample

    testString="testInnerString"
    puts "Hello world"

    #print "Hello world"
    #puts "Hello world in #{2000+14}"
    #puts "Current directory:\n#{`ls`}"

    puts "Testing embedded string #{testString}"


  end
end