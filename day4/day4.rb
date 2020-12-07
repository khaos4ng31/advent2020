# day4
# return number of trees encountered
# https://adventofcode.com/2020/day/4
# part 1: top-left, slope [3,-1] 
# part 2: get product of trees of following slopes:
# `input.txt`
# notes at very end explain thought process

$batch = Array.new()

class Credentials
	attr_accessor :byr, :iyr, :eyr, :hgt, :hcl, :ecl, :pid

end

class Passport < Credentials
	attr_accessor :cid
end

num = 0
File.foreach("input.txt") { |line| 
	if line === "\n" then 
		next
	# elsif 
		# TODO: add logic to determine if valid passport
	else
		next
	end
}
