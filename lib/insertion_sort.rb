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
