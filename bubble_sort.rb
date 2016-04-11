#=> Runs in O(n**2) time, n is length of array

def bubble_sort(array)
  array.each_index do |i|
    array[0..-1-i].each_index do |j|
      if array.length > j+1 && array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end
  array
end

p bubble_sort([3,7,2,1,0,1])
