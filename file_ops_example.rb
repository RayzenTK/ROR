class FileOpsExample < Example

  @file
  attr_accessor :readfile
  attr_accessor :writefile

  def initialize
    @exampleName="File Operations"
  end

  private
  def runSpecificExample
    puts "Reading whole file..."
    putsFile
    puts "Reading file line by line..."
    readFileLineByLine

    puts "Writing to file several lines"
    openFileForWrite
    writeToFile("Line1")
    writeToFile("Line2")
    writeToFile("Line3")
    closeFile

    puts "Appending to file"
    openFileForAppend
    writeToFile("Appended line1")
    closeFile
  end

  def openFileForWrite()
    @file = File.open @writefile,"w"
  end

  def openFileForAppend()
    @file = File.open @writefile,"a"
  end

  def writeToFile(lineToWrite)
    @file.puts lineToWrite
  end

  def closeFile
    @file.close
  end

  def putsFile()
    puts File.read @readfile
  end

  def readFileLineByLine()
    file = File.open @readfile
    lineCount=1;
    while (line = file.gets)
      puts "Line #{lineCount}:#{line}"
      lineCount+=1
    end
  end

end