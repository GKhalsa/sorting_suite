require 'pry'
class InsertionSort

  def sort(num_array)
    x = 1
    (num_array.length - 1).times do
      i = x
      x += 1
      while i > 0
        if num_array[i] < num_array[i - 1]
          num_array[i - 1], num_array[i] = num_array[i], num_array[i - 1]
          i -= 1
        else
          i +=  1
        end
        break if i > num_array.count - 1
      end
    end
    num_array
   end

end
