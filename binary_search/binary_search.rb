class Array
	def binary_search(val)
		raise ArgumentError if empty?

		mid = size/2
		beginning = 0
		ending = size - 1

		while ending >= beginning
			if self[mid] == val
				return mid
			elsif val < self[mid]
				ending = mid - 1
			else
				beginning = mid + 1
			end

			mid = beginning + ((ending - beginning)/2)
		end

		nil
	end
end