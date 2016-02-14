require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort.rb'

class InsertionSortTest < Minitest::Test
  def test_inserting_once
    sorter = InsertionSort.new
    assert_equal [1,2], sorter.sort([2,1])
  end

  def test_insertion_twice
    sorter = InsertionSort.new
    assert_equal [1,2,3], sorter.sort([2,1,3])
  end

end
