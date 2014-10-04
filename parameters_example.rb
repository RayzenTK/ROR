class ParametersExample < Example

  def initialize
    @exampleName = "ParametersExample"
  end

  private
  def runSpecificExample
    puts "Running method with parameters..."
    methodWithParameters(1,2,3,4,5)

    puts "Running method with default parameters..."
    puts "No params"
    methodWithDefParameters
    puts "One param only..."
    methodWithDefParameters("OneRealParam")
    puts "Two params..."
    methodWithDefParameters("OneRealParam", "TwoRealParam")

    methodWithDefParameters(nil,"TwoRealParam")
  end

  def methodWithParameters(*arg)
    puts "Amount of parameters:#{arg.size}"

    puts "First parameter is:#{arg.at 0}"
    puts "Last parameter is:#{arg.at(arg.size-1)}"
  end

  def methodWithDefParameters(param1="def1", param2="def2")
    puts "Param1:#{param1}"
    puts "Param2:#{param2}"
  end

end