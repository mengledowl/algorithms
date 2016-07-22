# two ways of doing a quick sort in ruby

class Array
	def quick_sort
		return self if size <= 1
		
		middle = self[self.size/2]
		
		median = [first, middle, last].sort[1]

		pivot = median
		self.delete_at(self.index(pivot))

		less = []
		more = []

		self.each do |i|
			if i < pivot
				less << i
			else
				more << i
			end
		end

		self.clear

		self << less.quick_sort
		self << pivot
		self << more.quick_sort

		self.flatten!
	end
end

class QuickSort
	def sort(arr)
		return arr if arr.size <= 1

		p = arr[0]

		arr = partition(arr, 0, arr.size-1)
		
		left = arr.slice(0..arr.index(p))
		l_arr = sort(left)

		right = arr.slice((arr.index(p)+1)..arr.size - 1)
		r_arr = sort(right)

		arr = l_arr
		arr << r_arr
		arr.flatten!
	end

	def partition(arr, l, r)
		p = arr[l]
		i = l+1

		for j in (l+1)..r
			if arr[j] < p
				j_val = arr[j]
				i_val = arr[i]
				arr[j] = i_val
				arr[i] = j_val

				i += 1
			end
		end

		l_val = arr[l]
		i_val = arr[i-1]

		arr[l] = i_val
		arr[i-1] = l_val

		arr
	end
end