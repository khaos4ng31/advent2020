# day2
# return number of invalid passwords
# policy : password
# `pass.txt`

# defining classes for purpose of learning Ruby syntax and whatnot
# yeah I know I could probably do it better but the purpose
# is to learn Ruby so ¯\_(ツ)_/¯ might as well play with OOP

class Password
	class Policy
		@@lowerBound = 0
		@@upperBound = 0
		@@requirement = ""

		def self.lowerBound
			@@lowerBound
		end

		def self.upperBound
			@@upperBound
		end

		def self.requirement
			@@requirement
		end
	end

end

File.foreach("pass.txt") { 
	|line| 
	# ### test
	# pass.push(line.to_i)  
	# puts line
	### test
}