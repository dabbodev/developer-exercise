class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    output = ""
    words = str.split
    for word in words do
      if word.length <= 4
        output += word + " "
      else
        p = ""
        if word[word.length - 1].index(/[[:punct:]]/)
          p = word[word.length - 1]
        end
        if word[0] == word[0].capitalize
          output += "Marklar" + p + " " 
        else
          output += "marklar" + p + " "
        end
      end
    end
    return output.chop
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    output = 0
    a = 1
    b = 0
    (1..nth).each do |fib|
      c = a + b 
      b = a
      a = c
      if (b % 2) == 0
        output += b
      end
    end
    return output
  end
end
