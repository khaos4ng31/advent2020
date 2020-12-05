# day2
# return number of invalid passwords
# policy : password
# part 1: policy = # occur
# part 2: policy = positions XOR'd for req  
# `pass.txt`
# notes at very end explain thought process


class Password
	PASS_PATTERN = /(?<lower>\d+)-(?<upper>\d+) (?<req>\w): (?<pass>\w+)/
	@@isValid_a = false
	@@isValid_b = false

	def initialize(line)
		# input = `lower-upper req: password`
		m = PASS_PATTERN.match(line)
		@@lower, @@upper, @@req, @@password = m[1..4]
		repeated = @@password.count @@req
		
		@@isValid_a = (@@lower.to_i <= repeated && repeated <= @@upper.to_i)
		@@isValid_b = (@@password[(@@lower.to_i)-1] === @@req) ^ (@@password[(@@upper.to_i)-1] === @@req)
	end

	def isValid_a
		return @@isValid_a
	end

	def isValid_b
		return @@isValid_b
	end

end

count_a = 0
count_b = 0
File.foreach("pass.txt") {
	|line| 
	p = Password.new(line)
	count_a += p.isValid_a ? 1:0
	count_b += p.isValid_b ? 1:0
}

puts "Part 1: " + count_a.to_s
puts "Part 2: " + count_b.to_s
puts "abcd"[0]

# defining classes was for purpose of learning Ruby syntax and whatnot
# yeah I know I could probably do it better but the purpose
# is to learn Ruby so ¯\_(ツ)_/¯ might as well play with OOP

# Could have been finished within `for` loop with regex, counter, lambdas
# but then I wouldn't have taken the time to learn all of the RB syntax