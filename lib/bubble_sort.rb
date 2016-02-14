require 'pry'
class BubbleSort

  def sort(unsorted)
    sorted = false
    while !sorted do
      sorted = true
      counter = 0
      ((unsorted.length) -1).times do
        if unsorted[counter] > unsorted[counter + 1]
          unsorted[counter], unsorted[counter + 1] = unsorted[counter + 1], unsorted[counter]
          sorted = false
        end
        counter += 1
      end
    end
    unsorted
  end

end
