require "minitest/autorun"
require_relative "binary_search"

class BinarySearchTest < MiniTest::Test
	def setup
		@arr = [10,14,19,26,27,31,33,35,42,44]
	end

	def test_raises_error_if_array_empty
		arr = []

		assert_raises(ArgumentError) { arr.binary_search(1) }
	end

	def test_should_return_middle_correctly
		assert_equal 4, @arr.binary_search(27)
	end

	def test_should_return_correct_index
		assert_equal 5, @arr.binary_search(31)
	end

	def test_should_return_correct_index_if_size_1
		assert_equal 0, [3].binary_search(3)
	end

	def test_should_return_nil_if_not_found
		assert_equal nil, @arr.binary_search(0)
	end
end