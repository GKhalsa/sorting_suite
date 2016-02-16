require 'pry'
class MergeSort

  def sort(num_array)
    return num_array if num_array.length <= 1
    mid_point = (num_array.length) / 2
    left_split = num_array[0..(mid_point - 1)]
    right_split = num_array[mid_point..-1]
    merge(sort(left_split), sort(right_split))
  end

  def merge(left, right)
    merged = []
    until left.empty? || right.empty?
      next_val = left[0] <= right[0] ? left.shift : right.shift
      merged << next_val
    end
    merged + left + right
  end

end
