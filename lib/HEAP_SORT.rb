# frozen_string_literal: true

require_relative "HEAP_SORT/version"

module HEAPSORT
  class Error < StandardError; end
  # frozen_string_literal: true

def heapify(arr, n, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && arr[i] < arr[left]
    largest = left
  end
  if right < n && arr[largest] < arr[right]
    largest = right
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

def heap_sort(arr)
  n = arr.length
  (n / 2 - 1).downto(0) do |i|
    heapify(arr, n, i)
  end

  (n - 1).downto(1) do |i|
    arr[i], arr[0] = arr[0], arr[i]
    heapify(arr, i, 0)
  end
  arr
end
end
