#Complexity: even_odd runs in O(1) where length of input is number of digits
#(This assumes that ruby implements %2 by only considering last digit)

def even_odd(x)
  ["even", "odd"][x % 2]
end

p even_odd(13) #=> "odd"
p even_odd(1000000000000000000000000000000000000000) #=> "even"

#running this file in terminal, the above two take the same amount of time to run
