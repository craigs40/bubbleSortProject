def bubble_sort(array)
  n = array.length
  p "Array to sort = #{array}"
  until n <= 1
    newn = 0
    array.each_with_index do |value, index|
      if (array[index + 1]).is_a?(Integer)
        if array[index] > array[index + 1] then array[index], array[index + 1] = array[index + 1], array[index]
          newn = index + 1
        end
      end
      n = newn
    end
  end
  p "Sorted array = #{array}"
  puts
end

array = [4,3,78,2,0,2]
bubble_sort(array)

def bubble_sort_by(arr)
  swap = true
  while swap == true
    swap = false
    (arr.length - 1).times do |x|
      if yield(arr[x], arr[x + 1]).positive?
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        swap = true
        break if swap == false
      end
    end
    break if not swap
  end
  p arr
  arr
end
bubble_sort_by(%w[hi hello hey]) do |x, y|
  x.length - y.length
end
