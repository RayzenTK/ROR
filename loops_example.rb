class LoopsExample < Example

  def initialize
    @exampleName = 'Loops'
  end

  private
  def runSpecificExample
    #simpleForLoop
    #eachDoLoop
    blocksLoop
  end

  def simpleForLoop
    puts "---Simple for loop"
    for i in [1,2,3]
      puts "Iteration:#{i}"
    end

    for i in ['ala', 'ma', 'kota', 1, 2, 3]
      puts "Iteration #{i}"
    end
  end

  def eachDoLoop
    puts "--- Simple each loop"
    (1..10).each do
    |s|
      puts "Iteration:#{s}"
    end
  end

  def blocksLoop
    puts "--- blocks loop"
    [[1,2,3],[4,5,6],[6,7,8]].each do
      |s|
      puts "Iteration:#{s}"
    end
  end


end