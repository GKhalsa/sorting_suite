require 'pry'
class BubbleSort

  def sort(unsorted)
    switches = (unsorted.length) - 1
    switches.times do
      counter = 0
      switches.times do
        if unsorted[counter] > unsorted[counter + 1]
          unsorted[counter], unsorted[counter + 1] = unsorted[counter + 1], unsorted[counter]
        end
        counter += 1
      end
    end
    unsorted
  end

end
