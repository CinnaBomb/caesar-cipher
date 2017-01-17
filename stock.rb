def stock_picker (arr)
	buy = 0
	sell = 0
	diff = 0
	i = 0
	while i < arr.length
		j = 1
		while j < arr.length
			if arr[j]-arr[i]>diff && i<=j
				buy = i
				sell = j
				diff = arr[j]-arr[i]
			end
			j+=1
		end
		i+=1
	end
	[buy,sell]
	#puts [buy,sell].to_s
end



#stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
 
#stock_picker([1,2,3,4,1,6,7,8,9,10,9,8,7,4,5,16,7,8,19])
#[0,18]
  
#stock_picker([17,3,6,9,15,8,6,10,1,16])
# [8,9]
  
#stock_picker([1,2,3,4,5,6,7,8,9,10,11,12,13])
# [0,12]
  
#stock_picker([10,9,8,7,6,5,4,3,2,1])
#[0,0]
