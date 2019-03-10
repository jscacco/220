

# Pangram: determine if a sentence is a pangram
def isPangram (sentence)
  letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  for c in letters do
    if not sentence.include? c
      return false
    end 
  end 
  return true
end

# Queen Attack: return true if the queens attack eachother
def canAttack (x1, y1, x2, y2)
  return x1 == x2 || y1 == y2 ||(x1 - x2).abs == (y1 - y2).abs
end

# Define our own higher-order function
# that takes a code block

def one_to_x_squared x
  i = 1
  while i <= x
    yield i * i
    i += 1
  end
end
