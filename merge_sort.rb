#!/usr/bin/ruby

class Utils
	def self.merge_sort(arr)
		return arr if arr.size < 2

		mid = arr.size/2

		a = merge_sort(arr.slice(0, mid))
		b = merge_sort(arr.slice(mid, arr.size - mid))

		c = []

		i = 0
		j = 0

		arr.size.times do
			if a[i].nil?
				c << b[j]
				j += 1
			elsif b[j].nil?
				c << a[i]
				i += 1
			elsif a[i] < b[j]
				c << a[i]
				i += 1
			else
				c << b[j]
				j += 1
			end
		end

		c
	end
end



puts "ARRAY SIZE 0 TEST"
puts Utils.merge_sort([]).inspect

puts "\nARRAY SIZE 1 TEST"
puts Utils.merge_sort([1]).inspect

puts "\nQUICKSORT TEST"
puts Utils.merge_sort([5, 4, 1, 8, 7, 2, 6, 3]).inspect

puts "\nQUICKSORT WITH REPEATS TEST"
puts Utils.merge_sort([5, 4, 1, 8, 7, 2, 6, 3, 3, 6, 2, 7, 8, 1, 4, 5, 5, 4]).inspect

puts "\nQUICKSORT WITH UNEVEN SIZE TEST"
puts Utils.merge_sort([5, 4, 1, 8, 7, 2, 6, 3, 9]).inspect