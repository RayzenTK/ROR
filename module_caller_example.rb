require './module_example'

class ModuleCallerExample < Example
  include ModuleExample

  def initialize
    @exampleName = 'Module Caller'
  end

  private
  def runSpecificExample
    puts "Value of Module const is:#{MODULE_VALUE}"

    puts (instanceMethod)
  end

end