# Day 1
# find product of 3 values summing to 2020
# `input.txt` is local

num = Array.new()
File.foreach("input.txt") { |record| num.push(record.to_i)  }
for i in 0..num.length()-1
	# catch :letmeout do
		for j in i..num.length()-1
			for k in j..num.length()-1
				if (num[i]+num[j]+num[k]===2020) then 
					puts num[i]*num[j]*num[k]
					# throw :letmeout
				end
			end
		end
	# end
end