require 'pry-byebug'

def bubble_sort(array)
  n = array.length
  i = 0
  temp = 0
  while i < n - 1 do
    j = 0
    while j < n - i - 1 do # no need to check till end array as after each iteration, left elts should be bigger dy
      if array[j] > array[j + 1]
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  array
end

array = [4, 3, 78, 2, 0, 2]
p bubble_sort(array)

# bubble sort n^2, outer loop inner loop
# outer loop how many times as the array.length
# inner loop compares left right elts and swap if needed
