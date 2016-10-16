def stockPicker (stockArray)
	lowDay = 0
	highDay = 0
	profit = -1

	stockArray.each_index do |currentDay|
		compareDay = currentDay + 1
		while compareDay < stockArray.size
			if ((stockArray[compareDay]) - (stockArray[currentDay])) > profit
				profit = stockArray[compareDay] - stockArray[currentDay]
				highDay = compareDay
				lowDay = currentDay
			end
			compareDay += 1
		end
	end
	return [profit, lowDay, highDay]
end

puts "Please enter an array with commas eg 10,3,4,5,1"
stockArray = gets.chomp.split(",").map do |x| 
	x.to_i
end
print stockPicker(stockArray)
