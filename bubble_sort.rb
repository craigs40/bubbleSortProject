def bubble_sort(arr)
  a = arr.length
  for x in 0..a
    for y in x + 1..a - 1
      if arr[x] > arr[y]
        arr[x], arr[y] = arr[y], arr[x]
      end
    end
  end
  print arr
end
print bubble_sort([4,3,78,2,0,2])
