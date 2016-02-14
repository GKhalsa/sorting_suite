require 'pry'
class InsertionSort

  def sort(num_array)
    i = index = num_array.length - 1
    
      while i > 0 && num_array[i] < num_array[i - 1]
        num_array[i-1], num_array[i] = num_array[i], num_array[i-1]
        i -= 1
      end
      num_array
  end









  # def sort(arr)
  #   return arr if arr.size<=1
  #   i=arr.size-1
  #   while arr[i-1]>arr[i] and i>0
  #     arr[i],arr[i-1] = arr[i-1],arr[i]
  #     i-=1
  #   end
  #   arr
  # end

end
