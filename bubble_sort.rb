def bubble_sort(number_list)
  for i in (1..number_list.length-1) do
    number_list.each_with_index do |element,index|
      if index != (number_list.length-1) && element > number_list[index+1]
         number_list[index..index+1]=[number_list[index+1],element]
      end
    end
  end
 return number_list
end

list=[4,3,78,2,0,2]
p bubble_sort(number_list=list)
