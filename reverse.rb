#reverse runs in O(n) time, n is length of array

def reverse(array)
  n = array.length
  reversed = array.each_index.map do |i|
    array[n - i - 1]
  end
end

p reverse([3,7,3,4,5]) #=> [5,4,3,7,3]
