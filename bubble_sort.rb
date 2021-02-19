# def bubble_sort(arr)
#   a = arr.length
#   for x in 0..a do
#     for y in x + 1..a - 1 do
#       if arr[x] > arr[y]
#         arr[x], arr[y] = arr[y], arr[x]
#       end
#     end
#   end
#   print arr
# end
# print bubble_sort([4, 3, 78, 2, 0, 2])


def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1
  loop do
    swapped = false
    (array_length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

unsorted_array = [11,5,7,6,15, 100, -1, 0]
p bubble_sort(unsorted_array)