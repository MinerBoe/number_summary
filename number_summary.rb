def mean(list)
	total = 0
	length = list.length
	list.each do |value|
		total = total + value
	end
	mean = total / length
	return mean
end

def median(list)
	list = list.sort()
	length = list.length
	middle = 0

	if length % 2 == 0

		upper_value = list[length / 2]
		lower_value = list[(length / 2) - 1]
		if upper_value == lower_value
			return upper_value
		end
		avg_value = (upper_value + lower_value) / 2
		return avg_value
	end

	if length % 2 != 0 
		# odd length
		middle = (length + 1) / 2
		return list[middle-1]
	end



end