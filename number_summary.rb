def mean(list)
	total = 0
	length = list.length
	list.each do |value|
		total = total + value
	end
	mean = total / length
	return mean
end