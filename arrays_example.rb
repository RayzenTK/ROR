require './formatter_example'

class ArraysExample < Example

  def initialize
    @exampleName = "Arrays Example"
  end

  private
  def runSpecificExample

    array = Array.new
    array[0]=1;
    array[1]="Two"
    array[2]=FormatterExample.new

    for i in array
      puts i.inspect
      if (i.instance_of? FormatterExample) then
        i.runExample
      end
    end

    directories = Dir.entries("C:\\")
    for dir in directories
      #puts dir
    end

    arr = ['a', 'b', 'c', 'd']

    arr2 = arr[1,1]
    puts arr2.inspect
    arr2 = arr[1..2]
    puts arr2.inspect
    arr2 = arr[-2, 2]
    puts arr2.inspect
    arr2 = arr[-3..-2]
    puts arr2.inspect

    iterate (arr+arr2)

    if (!arr.empty?) then
      puts "The array is not empty"
    end

    if (arr.include? "f") then
      puts "This array includes c"
    end

    arrayCreation
    runShiftExample
    arrayOperations
  end



  def arrayCreation
    puts "--- Array creation examples"
    array = Array.new(5, true)
    iterate array
    array = Array.new(4, "cat")
    iterate array

  end

  def runShiftExample
    arr = [1, 2,3,4,5]
    arr.unshift
  end

  def arrayOperations
    # .first, .last, .take, .drop
    arr = [1,2,3,4]
    iterate arr.drop 2

    #push, <<
    iterate arr << 7

    #unshift
    iterate arr.unshift(99)
    iterate arr.insert(2, 'cat', 'dog')
    arr.insert(6, 'cat')
    arr.push(nil, nil, nil)
    iterate arr
    iterate arr.compact
    iterate arr.uniq

    #flatten, reverse
    #lots of other nice functions here: http://www.ruby-doc.org/core-2.1.3/Array.html

  end

  def iterate (array)
    for i in array
      puts "Iteration:#{i}"
    end
  end
end