# The function make_it_ordinal should return an ordinal array given an array of numbers.

# For example: 3 should become 3rd and 2 should become 2nd so on and so forth.

def make_it_ordinal(numbers)
    numbers.map{|number| ordinalize(number)}
  end
  
  def ordinal(number)
    if (11..13).include?(number % 100)
      "th"
    else
      case number % 10
        when 1; "st"
        when 2; "nd"
        when 3; "rd"
        else    "th"
      end
    end
  end
  
  def ordinalize(number)
    "#{number}#{ordinal(number)}"
  end
  