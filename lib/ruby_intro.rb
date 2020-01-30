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
  if ( arr.length() != 0 && arr.length() != 1) 
    sum =  arr.max
    i = arr.index(sum)
    arr.slice!(i)
    sum = sum + arr.max
  elsif (arr.length() == 1 )
    sum = arr[0]
  else 
    sum = 0
  end
  return sum
  
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
  if ( s.length > 0 ) 
    t = s[0,1]
    if ( t.ord < 65 || t.ord > 122)
      return false
    end
  end

 
  
  if  ( t != 'A' && t != 'a' && t != 'E' && t != 'e' && t != 'I' && t != 'i' && t != 'O' && t != 'o' && t != 'U' && t != 'u' && s.length >0) 
    return true
  end
  return false;
  
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

# nums = [1]
# n =  max_2_sum nums
# puts n

puts starts_with_consonant? 'A'
puts starts_with_consonant? 'a'
puts starts_with_consonant? 'z'
puts starts_with_consonant? 'Z'
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




