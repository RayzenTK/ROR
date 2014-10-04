class Example

  @@wykladName

  attr_accessor :exampleName


  def callPrivateMethod()
    testMethod
  end

  def self.wykladName= (nName)
    @@wykladName=nName
  end

  def self.wykladName
    @@wykladName
  end


  def runExample
    puts "#### Running example:#{exampleName} during #{@@wykladName}####"
    runSpecificExample
    puts "#### End of example ####"
  end


  private
  def runSpecificExample
    # to override
  end

  def testMethod
            puts 'this is internal only method'
  end




end