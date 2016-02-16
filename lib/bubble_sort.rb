require 'pry'
class BubbleSort
   attr_reader :sorted

  def initialize
    @sorted = false
  end

  def sort(num_array)
    while !sorted do
      index = 0
      @sorted = true
      elements_of_array = ((num_array.length) -1)
      elements_of_array.times do
        compare_previous_index_with_current(num_array, index)
        index += 1
      end
    end
    num_array
  end

  def compare_previous_index_with_current(num_array, index)
    previous = num_array[index]
    current = num_array[index + 1]
    if previous > current
      swapped = swap!(num_array, previous = index, current = index + 1)
      @sorted = false
    end
  end

  def swap!(num_array, previous, current)
    num_array[previous], num_array[current] = num_array[current], num_array[previous]
  end

end
