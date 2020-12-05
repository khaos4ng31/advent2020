# Day 1
# find product of two values summing to 2020
# `input.txt` is local

num = Array.new()
File.foreach("input.txt") { |record| num.push(record.to_i)  }
for i in 0..num.length()-1
	for j in 0..num.length()-1
		if (num[i]+num[j]===2020) then 
			puts num[i]*num[j]
			next
		end
	end
end