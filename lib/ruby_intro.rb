# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  i = 0;
  arr.each { |item|
    i = i + item
  }
  return i
end

def max_2_sum arr
  # if ( arr.length() != 0 ) 
  #   sum =  arr.max
  #   i = arr.index(sum)
  #   arr.slice!(i)
  #   sum = sum + arr.max
  # elsif (arr.length() == 1 )
  #   sum = arr[0]
  # else 
  #   sum = 0
  # end
  # return sum
  
end

def sum_to_n? arr, n
  
  arr.each_with_index {|element, i|
    arr.each_with_index {|item, j |
      if (element + item === n and i != j ) 
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  nm = "Hello, "+name
  return nm
end

def starts_with_consonant? s
  #//if (s.ord == 65 || s.ord == 69 || s.ord == 73 || s.ord == 79 || s.ord == 85 )
  if ( s == 'A' || s == 'a' || s == 'E' || s == 'e' || s == 'I' || s == 'i' || s == 'O' || s == 'o' || s == 'U' || s == 'u' || s == '')
    return false
  end
  return true;
  
end

def binary_multiple_of_4? s
  temp = s.to_i(2)
  if ( temp == 0 && s != "0") 
    return false
  elsif ( temp%4 == 0 ) 
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock
  def initialize is, pr
    if (is == "" || pr <= 0)
      raise ArgumentError.new("not a correct ISBN")
    end
    @isbn = is
    @price = pr
  end
  def isbn
    return @isbn
  end
  def isbn= is
    @isbn = is
  end
  def price
    return @price
  end
  def price= pr
    @price = pr
  end
  def price_as_string
    var = "$" + @price.to_s
    if (!@price.to_s.include? ".") 
      var = var + ".00"
    else
      temp = @price.to_s.index(".")
      if ( @price.to_s.length - temp == 2 )
        var = var + "0"
      end
    end
    return var
  end
end

# nums = [1,2,3,4]
# n =  sum_to_n? nums,2
# puts n

# puts starts_with_consonant? 'a'
# puts starts_with_consonant? 'e'
# puts starts_with_consonant? 'B'

# book= BookInStock.new("",10.00)
# puts book.price_as_string

# puts binary_multiple_of_4? "1001"
# puts binary_multiple_of_4? "1010"
# puts binary_multiple_of_4? "1011"
# puts binary_multiple_of_4? "1100"
# puts binary_multiple_of_4? "1101"
# puts binary_multiple_of_4? "1110"
# puts binary_multiple_of_4? "1111"
# puts binary_multiple_of_4? "10000"




