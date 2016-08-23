class Array
	def interpolation_search(val)
		raise ArgumentError if empty?

		low = 0
		high = size - 1
		mid = (size - 1)/2

		while high > low
			return nil if high == low || self[high] == self[low] || high < low

			mid = low + ((high - low)/(self[high] - self[low])) * (val - self[low])

			return nil if self[mid].nil?

			if self[mid] == val
				return mid
			elsif val < self[mid]
				high = mid - 1
			else
				low = mid + 1
			end
		end

		nil
	end
end