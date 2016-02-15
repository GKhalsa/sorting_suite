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

  def test_insertion_thrice
    sorter = InsertionSort.new
    assert_equal [1,2,3,4], sorter.sort([2,3,1,4])
  end

  def test_inserting_four_times
    sorter = InsertionSort.new
    assert_equal [1,2,3,4,5], sorter.sort([5,4,3,2,1])
  end
  def test_insertion_with_empty_array
    sorter = InsertionSort.new
    assert_equal [], sorter.sort([])
  end

  def test_insertion_with_letters
    sorter = InsertionSort.new
    assert_equal ["a","b","c","d"], sorter.sort(["d","c","a","b"])
  end

  def test_insertion_with_letters_and_symbols
    sorter = InsertionSort.new
    assert_equal ["%","*","a","b","c","d"], sorter.sort(["*","d","c","a","b","%"])
  end

  def test_insertion_with_sorted_array
    sorter = InsertionSort.new
    assert_equal [1,2,3,4,5], sorter.sort([1,2,3,4,5])
  end

  def test_insertion_with_one_char
    sorter = InsertionSort.new
    assert_equal [1], sorter.sort([1])
  end

end
