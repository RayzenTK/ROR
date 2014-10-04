class ExceptionsExample <Example

  def initialize
    @exampleName = 'Exceptions Example'
  end

  private
  def runSpecificExample
      basicExceptions
      catchExceptions
      throwCatch
  end

  def basicExceptions
    filename = "notExistingFile.txt"
    begin
      puts "Opening a file:#{filename}"
      puts File.read filename

    rescue Exception => e
        puts "Exception raised: #{e.exception}"
        filename = "test.txt"
        retry
    end
  end

  def catchExceptions
    begin
      raiseMemoryException
    rescue NoMemoryError => e
      puts "Rescued memory error"
        puts e.exception
    rescue Exception => e
      puts "Rescued general exception"
      puts e.exception
    ensure
      puts "Now the final cleanup done..."
      end
  end


  def raiseExceptions
    raise "This is just a dummy exception"
  end

  def raiseMemoryException
    raise NoMemoryError,"I'm running out of memory"
  end

  def throwCatch
    #TBD
  end
end