def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    arr.each_with_index.map do |y|
      if y < (arr.count - 1) && arr[y] > arr[y + 1]
        arr[y], arr[y + 1] = arr[y + 1], arr[y]
        swap = true
      end
    end
  end
  arr
end
print bubble_sort([4, 3, 78, 2, 0, 2])

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
  end
  print arr
end
bubble_sort_by(%w[hi hello hey]) do |x, y|
  x.length - y.length
end
