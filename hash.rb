def substrings (str, dict)
	#str = str.split(/[ ?.!'",]/)
	#puts str
	i=0
	hash = {}
	dict.each do |word|
		if str.include?(word)
			hash[word]=str.scan(word).length
		end
	end
hash
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
#=> {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}