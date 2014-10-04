require './parameters_example'

class HashExamples < Example
  def initialize
    @exampleName ="Hash examples"
  end

  private
  def runSpecificExample
    hashCreation
    hashOperations
  end

  def hashCreation
    puts '---Hash creation:'
    hash = Hash.new
    hash['a']=11;
    hash['b']='abc';
    hash[ParametersExample.new]="all types of params"
    iterate hash

    hash2 = { 'key1'=> 'val1', 'key2'=>'val2'}
    iterate hash2

    hash2.default = "This is a default fallback"

    puts hash2['whatever']
  end

  def hashOperations
    puts '---Hash operations:'
    hash = {'a'=>1, 'b'=>2, 'c'=>3}
    hash2 = {'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6}
    iterateArray hash.keys+hash2.keys
    iterateArray hash.keys&hash2.keys
    iterateArray hash.keys-hash2.keys
  end

  def iterate(hash)
    hash.each do
      |a,b|
      puts "Hash key:#{a} with value #{b}"
      end
  end

  def iterateArray (array)
    for i in array
      puts "Key:#{i}"
    end
  end
end