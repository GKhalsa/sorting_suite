class InsertionSort
  attr_reader :current_index
  def initialize
    @current_index = nil
  end

  def sort(unsorted)
    elements_of_array = unsorted.length
    elements_of_array.times do |index|
      @current_index = index
      while current_index > 0 && current_index < elements_of_array
        compare_elements_to_determine_what_numbers_go_where(unsorted)
      end
    end
    sorted = unsorted
    sorted
   end

   def compare_elements_to_determine_what_numbers_go_where(unsorted)
     previous = current_index - 1
     if unsorted[current_index] < unsorted[previous]
       swap!(unsorted, current_index, previous)
       @current_index -= 1
     else
       @current_index += 1
     end
   end

   def swap!(unsorted, current_index, previous_index)
     unsorted[previous_index], unsorted[current_index] = unsorted[current_index], unsorted[previous_index]
   end



end
