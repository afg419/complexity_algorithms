#square runs in O(n**2), n is length of array.

def square(array)
  result = []
  array.each_index do |i|
    array.each_index do |j|
      result << [array[i], array[j]]
    end
  end
  result
end

p square([0,1]) #=> [[0, 0], [0, 1], [1, 0], [1, 1]]
