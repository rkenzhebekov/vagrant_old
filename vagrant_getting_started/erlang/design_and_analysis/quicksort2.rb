# file = File.new("QuickSort.txt", "r")
file = File.new("100.txt", "r")
arr = []
while (line = file.gets)
  arr << line.to_i
end
file.close

class Sorting
  attr_accessor :counter
  def initialize
    @counter = 0
  end

  def quicksort(arr, low, high)
    if low < high
      p = partition(arr, low, high)
      quicksort(arr, low, p - 1)
      quicksort(arr, p + 1, high)
    end
  end

  def partition(arr, low, high)
    pivot = arr[high]
    i = low
    for j in low .. high - 1
      @counter += 1
      if arr[j] < pivot
        swap(arr, i, j)
        i += 1
      end
    end
    swap(arr, high, i)
    i
  end

  def swap(arr, i, j)
    temp = arr[j]
    arr[j] = arr[i]
    arr[i] = temp
  end
end

# arr = [3, 9, 8, 4, 6, 10, 2, 5, 7, 1]
s = Sorting.new
s.quicksort(arr, 0, arr.length - 1)
p s.counter
p arr
p [162085, 160361/160361]
