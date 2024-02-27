dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (text, dictionary)
    result={}
    li_text=text.downcase.split
    dictionary.each do |element|
	li_text.each do |word|
		if word.include? element
		  if result.keys.include? element
           		  result[element] += 1
		  else
			  result[element] = 1 
		  end
		end
	end
    end
 return result
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
