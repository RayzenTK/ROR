class ConditionalsExample < Example

  def initialize
    @exampleName = "Conditional statements"
  end

  private
  def runSpecificExample
    puts "If conditional"

    if (7<5) then
      puts "Reachable part of code"
    else
      puts "Unreachable part of code"
    end

    (5<7)? puts("true"):puts("false")


    puts "------Showcasing if ..elsif"

    if (7<5) then
      puts "this is not true"
    elsif (7<10)
      puts "finally true"
    end

    day = 'Monday'

    puts "------showcasing unless..."
    unless day == 'Sunday' or day =='Saturday'
      puts "I hate to wakeup early..."
    else
      puts "Great, its weekend!"
    end

    puts "------showcasing case statement"
    day = 6
    case (day)
      when "Sunday", 6..7 then puts "Its weekend!"
      when "Saturday", 6 then puts "It's weekend!"
        puts "It's the beginning of the weekend :)"
      else puts "Yet another tough day..."
    end
  end

end