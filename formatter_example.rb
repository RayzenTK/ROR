class FormatterExample < Example


  def initialize
    @exampleName = 'FormatterExample'
  end

  def runSpecificExample

    format = "This is a test format example for decimal %d, float %f and string %s" % [16, 20, 'cat']
    puts format
  end
end