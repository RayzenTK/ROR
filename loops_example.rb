class LoopsExample < Example

  def initialize
    @exampleName = 'Loops'
  end

  private
  def runSpecificExample
    #simpleForLoop
    #eachDoLoop
    blocksLoop
    #whileLoop
    #untilLoop
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

    for a,b in [[1,2], [3,4], [5,6]]
    puts "Iteration with:#{a}, #{b}"
    end

    [[1,2,3],[4,5,6],[6,7,8]].each do
      |s|
      puts "Iteration:#{s}"
    end
  end


  def whileLoop
    puts "--- while loop"
    i=0;
    while (i<10)
      puts "Iteration:#{i}"
      i+=1;
    end

    puts "--- begin...end while <cond>"
    i=0;
    begin
    puts "Iteration:#{i}"
      i+=1;
    end while (i<10)

  end

  def untilLoop
    puts "--- until loop"
    i=0;
    until (i==10) do
      puts "Iteration:#{i}"
      i+=1;
    end
  end

end