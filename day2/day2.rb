# day2
# return number of invalid passwords
# policy : password
# part 1: policy = # occur
# part 2: policy = positions XOR'd for req  
# `pass.txt`
# notes at very end explain thought process


class Password
	PASS_PATTERN = /(?<lower>\d+)-(?<upper>\d+) (?<req>\w): (?<pass>\w+)/
	@@isValid = true

	def initialize(line)
		# input = `lower-upper req: password`
		m = PASS_PATTERN.match(line)
		@@lower, @@upper, @@req, @@password = m[1..4]
		x = @@password.count @@req
		@@isValid = (@@lower.to_i <= x && x <= @@upper.to_i) ? true : false
	end

	def isValid
		return @@isValid
	end

end

count = 0
File.foreach("pass.txt") { 
	|line| 
	p = Password.new(line)
	count += p.isValid ? 1:0
}

puts "Part 1: " + count.to_s

# defining classes was for purpose of learning Ruby syntax and whatnot
# yeah I know I could probably do it better but the purpose
# is to learn Ruby so ¯\_(ツ)_/¯ might as well play with OOP

# Could have been finished within `for` loop with regex, counter, lambdas
# but then I wouldn't have taken the time to learn all of the RB syntax