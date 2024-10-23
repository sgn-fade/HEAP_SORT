# frozen_string_literal: true
require 'rspec'
include HEAPSORT

RSpec.describe HEAPSORT do
  describe '#heap_sort' do
    it 'sorts an array of integers' do
      array = [12, 11, 13, 5, 6, 7]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([5, 6, 7, 11, 12, 13])
    end

    it 'sorts an array with negative numbers' do
      array = [-1, 2, 0, -5, 3]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([-5, -1, 0, 2, 3])
    end

    it 'sorts an array with duplicates' do
      array = [3, 1, 2, 3, 2, 1]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([1, 1, 2, 2, 3, 3])
    end

    it 'returns the same array when it contains one element' do
      array = [1]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([1])
    end

    it 'returns an empty array when the input array is empty' do
      array = []
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([])
    end

    it 'sorts an array with identical elements' do
      array = [7, 7, 7, 7]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([7, 7, 7, 7])
    end

    it 'sorts an array in reverse order' do
      array = [5, 4, 3, 2, 1]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([1, 2, 3, 4, 5])
    end

    it 'sorts an array with floating point numbers' do
      array = [3.5, 2.1, 4.6, 1.2]
      sorted_array = HEAPSORT.heap_sort(array)
      expect(sorted_array).to eq([1.2, 2.1, 3.5, 4.6])
    end

    it 'raises an error when sorting an array with mixed types' do
      array = [2, '1', 3.5] # Non-homogeneous array
      expect { HEAPSORT.heap_sort(array) }.to raise_error(ArgumentError)
    end
  end
end
