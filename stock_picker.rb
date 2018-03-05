def stock_picker(array)
  high_values=[]
  all_but_last=array.length-1
    all_but_last.times do |value|
    high_values.push(array[value]+array.max)
    end
  index=high_values.index(high_values.min)
  day_to_buy=index+1
  new_range=array[index..array.length]
  day_to_sell=new_range.index(new_range.max)+1

  puts ("The best day to buy is day #{day_to_buy} & the best day to sell is day #{day_to_sell}")

end

puts stock_picker([12,2,2,3,7,5,1])
