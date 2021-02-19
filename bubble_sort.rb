def bubble_sort(arr)
  a = arr.length
  [0..a].each do
    [x + 1..a - 1].each do
      puts arr[x], arr[y] = arr[y], arr[x] unless arr[x] < arr[y]
    end
  end
end
print bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  swap = true
  while swap == true
    swap = false
    (arr.length - 1).times do |x|
      if yield(arr[x], arr[x + 1]) > 0
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        swap = true
        break if swap == false
      end
    end
  end
  print arr
end
bubble_sort_by(["hi", "hello", "hey"]) do |x, y|
  x.length - y.length
end
