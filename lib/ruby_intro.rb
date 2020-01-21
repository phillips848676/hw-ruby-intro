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
  nm = "hello, "+name
  return nm
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

# nums = [1,2,3,4]
# n =  sum_to_n? nums,2
# puts n

puts hello "madeleine"


