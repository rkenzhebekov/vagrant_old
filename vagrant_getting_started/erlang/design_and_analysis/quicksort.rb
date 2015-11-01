file = File.new("QuickSort.txt", "r")
arr = []
while (line = file.gets)
  arr << line.to_i
end
file.close
# arr = [1,3,5,2,4,6]

def quicksort(arr, low, high)
  if low < high
    p = partition(arr, low, high)
    quicksort(arr, low, p - 1)
    quicksort(arr, p + 1, high)
  end
end

def partition(arr, low, high)
  pivot = arr[low]
  i = low + 1
  for j in low + 1 .. high
    if arr[j] < pivot
      swap(arr, i, j)
      i += 1
    end
  end
  swap(arr, low, i - 1)
  i - 1
end

def swap(arr, i, j)
  temp = arr[j]
  arr[j] = arr[i]
  arr[i] = temp
end

quicksort(arr, 0, arr.length - 1)
p arr
