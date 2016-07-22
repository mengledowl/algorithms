#!/usr/bin/ruby

require './quick_sort'

puts "IT SHOULD RETURN ARRAY IF SIZE = 1"
puts [1].quick_sort == [1]

puts "\nIT SHOULD SORT THE ARRAY"
puts [3, 1, 6, 2, 4, 5].quick_sort == [1,2,3,4,5,6]
puts [5, -5, 11, 0, 3].quick_sort == [-5, 0, 3, 5, 11]

arr = [3,9,8,4,6,10,2,5,7,1]
puts arr.quick_sort == [1,2,3,4,5,6,7,8,9,10]

puts "\n(100)"
f = File.open('100_test.txt')
arr = []
f.each_line do |line|
	arr << line.gsub("\r\n", '').to_i
end
p arr.quick_sort == arr.sort

puts "\n(1000)"
f = File.open('1000_test.txt')
arr = []
f.each_line do |line|
	arr << line.gsub("\r\n", '').to_i
end
p arr.quick_sort == arr.sort



qs = QuickSort.new
puts "IT SHOULD SORT THE ARRAY (QuickSort class)"
arr = [3, 1, 6, 2, 4, 5]
puts qs.sort(arr) == [1,2,3,4,5,6]

puts "\n(10)"
arr = [3,9,8,4,6,10,2,5,7,1]
p qs.sort(arr) == [1,2,3,4,5,6,7,8,9,10]

puts "\n(100)"
f = File.open('100_test.txt')
arr = []
f.each_line do |line|
	arr << line.gsub("\r\n", '').to_i
end
p qs.sort(arr) == arr.sort