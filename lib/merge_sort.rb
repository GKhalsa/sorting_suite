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
    while left[0] && right[0]
      if left[0] < right[0]
        merged << left.shift
        if left[0].nil?
          merged << right
        end
      else
        merged << right.shift
        if right[0].nil?
          merged << left
        end
      end
    end
    merged.flatten
  end
end

#(0,1,2,3,4).each do |num|
#if left[num] <=> right[num] == -1
#merged << left.push
#elsif 1
#merged << right.push
