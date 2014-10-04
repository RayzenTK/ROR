class ArgumentsExample < Example

  def initialize
  @exampleName="Arguments"
  end

  def runSpecificExample
    puts "Amount of command line arguments:#{ARGV.size}"
    puts "Argument1:#{ARGV.at 0}"
  end
end