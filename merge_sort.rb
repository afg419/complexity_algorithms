# merge_sort runs in O(n*log(n)) where n is length of array
# merge_two_sorted_arrays runs in O(n) where n is the sum of the lengths of the two arrays

def merge_sort(array)
  n = array.length
  if n <= 1
    return array
  end
  array1 = merge_sort(array.slice!(0, n/2))
  array2 = merge_sort(array)
  merge_two_sorted_arrays(array1, array2)
end


def merge_two_sorted_arrays(array1, array2)
  result = []

  until array1.empty? || array2.empty?
    if array1.first < array2.first
      result << array1.shift
    else
      result << array2.shift
    end
  end

  result = result + array1 + array2
end

p merge_two_sorted_arrays([1,3,4],[2,2]) #=> [1,2,2,3,4]
p merge_sort([6,1,5,3,4,1,1]) #=> [1,1,1,3,4,5,6]
