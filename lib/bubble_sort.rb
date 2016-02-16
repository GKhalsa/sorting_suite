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
    previous_index = num_array[index]
    current_index = num_array[index + 1]
    if previous_index > current_index
      swapped = swap!(num_array, previous_index = index, current_index = index + 1)
      @sorted = false
    end
  end

  def swap!(num_array, previous_index, current_index)
    num_array[previous_index], num_array[current_index] = num_array[current_index], num_array[previous_index]
  end

end
