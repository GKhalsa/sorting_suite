class InsertionSort

  def sort(num_array)
    sorted = []
    num = 0
    until num_array[num].nil?
      if num_array[num] < num_array[num + 1]
        sorted << num_array[num]
      else num_array[num] > num_array[num + 1]
        num_array.insert(num_array[num + 1], )
      end
    end
  end

end
