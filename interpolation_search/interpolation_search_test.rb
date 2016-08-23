require 'minitest/autorun'
require_relative 'interpolation_search'

class InterpolationSearchTest < MiniTest::Test 
	def setup
		@arr = [1,2,3,4,5,6,7,8,9,10]
	end

	def test_should_raise_argument_error_if_array_empty
		assert_raises(ArgumentError) { [].interpolation_search(0) }
	end

	def test_should_return_middle_index_correctly
		assert_equal 4, @arr.interpolation_search(5)
	end

	def test_should_return_correct_index
		assert_equal 1, @arr.interpolation_search(2)
	end

	def test_should_return_nil_if_no_match
		assert_equal nil, @arr.interpolation_search(11)
	end
end