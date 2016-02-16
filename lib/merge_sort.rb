require 'pry'
class MergeSort

  def sort(num_array)
    return num_array if num_array.length <= 1
    mid = (num_array.length) / 2
    left = num_array[0..(mid - 1)]
    right = num_array[mid..-1]
    merge(sort(left), sort(right))
  end

  def merge(left, right)
    merged = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged + left + right
  end

end
