#!/usr/bin/ruby

# merge sort that tracks the number of inversions
# todo: this is a bit sloppy - probably a better way to keep track of inversions than the way I'm doing it here
class Array
	attr_accessor :inversions

	def inversions
		@inversions ||= 0
	end

	def count_inversions
		sort_and_count_inversions
		inversions
	end

	def sort_and_count_inversions
		return self if size < 2

		mid = size/2

		a = slice(0, mid).sort_and_count_inversions
		b = slice(mid, size - mid).sort_and_count_inversions

		inversion_count = a.inversions + b.inversions

		i = 0
		j = 0
		c = []

		size.times do 
			if a[i].nil?
				c << b[j]
				j += 1
			elsif b[j].nil?
					c << a[i]
					i += 1
			elsif a[i] <= b[j]
				c << a[i]
				i += 1
			else
				c << b[j]
				inversion_count += (a.size - i)
				j += 1
			end
		end

		c.inversions = inversion_count
		self.inversions = inversion_count

		c
	end
end