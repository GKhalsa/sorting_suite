require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort.rb'

class MergeSortTest < Minitest::Test

  def test_merge_once
    sorter = MergeSort.new
    assert_equal [1,2], sorter.sort([2,1])
  end

  def test_merge_twice
    sorter = MergeSort.new
    assert_equal [1,2,3], sorter.sort([2,1,3])
  end

  def test_merge_thrice
    sorter = MergeSort.new
    assert_equal [1,2,3,4], sorter.sort([4,3,2,1])
  end

  def test_merge_numbers_with_repeats
    sorter = MergeSort.new
    assert_equal [0, 1, 2, 3, 3, 3, 4, 5, 8, 44], sorter.sort([4,3,2,1,0,8,3,3,5,44])
  end

  def test_merge_letters
    sorter = MergeSort.new
    assert_equal ["a","b","c","d","e"], sorter.sort(["c","d","a","b","e"])
  end

  def test_merge_pre_sorted
    sorter = InsertionSort.new
    assert_equal [1,2,3,4,5], sorter.sort([1,2,3,4,5])
  end

  def test_merge_empty_array
    sorter = InsertionSort.new
    assert_equal [], sorter.sort([])
  end

  def test_merge_one_letter
    sorter = InsertionSort.new
    assert_equal [1], sorter.sort([1])
  end

  def test_merge_letters_with_symbols
    sorter = InsertionSort.new
    assert_equal ["%","*","a","b","c","d"], sorter.sort(["*","d","c","a","b","%"])
  end


end
