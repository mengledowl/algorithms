class Array
	def binary_search(val)
		raise ArgumentError if empty?

		mid = size/2
		beginning = 0
		ending = size - 1
		index = nil

		while index.nil?
			if self[mid] == val
				index = mid
			elsif val < self[mid]
				ending = mid - 1
			else
				beginning = mid + 1
			end

			return nil if ending < beginning
			mid = beginning + ((ending - beginning)/2)
		end

		index
	end
end