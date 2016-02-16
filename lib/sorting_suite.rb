require 'benchmark'
class SortingSuite

  class BubbleSort

    def sort(num_array)
      sorted = false
      while !sorted do
        sorted = true
        index_count = 0
        ((num_array.length) -1).times do
          if num_array[index_count] > num_array[index_count + 1]
            num_array[index_count], num_array[index_count + 1] = num_array[index_count + 1], num_array[index_count]
            sorted = false
          end
          index_count += 1
        end
      end
      num_array
    end

  end

  class InsertionSort

    def sort(num_array)
      (num_array.length).times do |i|
        while i > 0 && i < num_array.count
          if num_array[i] < num_array[i - 1]
            num_array[i - 1], num_array[i] = num_array[i], num_array[i - 1]
            i -= 1
          else
            i +=  1
          end
        end
      end
      num_array
     end

  end

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

  class Benchmark
    def time(sorter, unsorted_array)
      start = Time.new.to_f
      sorter.new.sort(unsorted_array)
      finish = Time.new.to_f
      duration = (finish - start)
      stopwatch_response(sorter, duration)
    end

    def stopwatch_response(sorter,time)
      "#{sorter.to_s.split("::")[1]} took #{duration} seconds"
    end
  end

end
