def bubble_sort(arr)
  a = arr.length
  [0..a].each do
    [x + 1..a - 1].each do
      if arr[x] > arr[y]
        arr[x], arr[y] = arr[y], arr[x]
      end
    end
  end
  print arr
end
print bubble_sort([4, 3, 78, 2, 0, 2])
