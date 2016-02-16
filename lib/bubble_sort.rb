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
