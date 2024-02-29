
def price_picker(price_list)
  dictionary={}
  l=price_list.length
  price_list.each_with_index do |price,index|
  	if price < price_list[index..l].max
            dictionary[[index,price_list.find_index(price_list[index..l].max)]]= price_list[index..l].max - price
  	end
  end
 return dictionary.key(dictionary.values.max)
end

test=[17,3,6,9,15,8,6,1,10]
p test
p "the optimal days to buy and then sell are:"
p price_picker(price_list=test)
