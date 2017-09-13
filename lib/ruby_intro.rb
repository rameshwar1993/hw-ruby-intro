# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0..arr.length-1).any? do |i| 
    arr[i+1..-1].any? { |j| j + arr[i] == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  var = "Hello, " + name
  return var
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if  s.length == 0 || s.chars.first.match(/a|e|i|o|u|A|E|I|O|U/) || !s.chars.first.match(/\p{Alpha}/)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  i = s.to_i
  if i % 4 == 0 && !(i == 0 && s != "0")
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if price <= 0 || isbn.length == 0
      raise ArgumentError, "Error"
    end
    @isbn = isbn
    @price = price
  end
  
  def price
    @price
  end
  
  def isbn
    @isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price_as_string
    string = "%.2f" % @price
    return "$" + string
  end
end
