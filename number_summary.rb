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

def standard_deviation(list)
		mean = mean(list) # mean is correct
		array = []
		list.each do |value|
			number = (value-mean + 0.0)
			number = number * number
			array.push(number)
		end
		mean = mean(array)
		deviation = Math.sqrt(mean)
		return deviation
end

def mode(list)
	occurences = []
	max = 0

	list.each_with_index do |value, i|
		occurences.push(list.count(value))
	end

	max_occurences = 0
	max_i = []

	occurences.each do |occurence|
		if occurence > max_occurences
			max_occurences = occurence
		end
	end

	values = []
	occurences.each_with_index do |occurence, i|
		if occurence == max_occurences
			if values.include?(list[i])
				
			else
				values.push(list[i])
			end
		end
	end

	return values

end
