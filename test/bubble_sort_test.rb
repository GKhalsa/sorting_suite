require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test

  def test_sort_two_numbers
    sorter = BubbleSort.new
    assert_equal [1,2], sorter.sort([2,1])
  end

  def test_sort_three_numbers
    sorter = BubbleSort.new
    assert_equal [1,2,3], sorter.sort([3,2,1])
  end

  def test_sort_four_numbers
    sorter = BubbleSort.new
    assert_equal [1,2,3,4], sorter.sort([3,1,2,4])
  end

  def test_sorting_one_number
    sorter = BubbleSort.new
    assert_equal [1], sorter.sort([1])
  end

  def test_sorting_empty_array
    sorter = BubbleSort.new
    assert_equal [], sorter.sort([])
  end

  def test_sorting_negative_num
    sorter = BubbleSort.new
    assert_equal [-1,1], sorter.sort([1,-1])
  end

  def test_sorting_letters
    sorter = BubbleSort.new
    assert_equal ["a","b","c","d"], sorter.sort(["a","d","b","c"])
  end

  def test_return_pre_sorted_array
    sorter = BubbleSort.new
    assert_equal [1,2,3,4], sorter.sort([1,2,3,4])
  end

end
