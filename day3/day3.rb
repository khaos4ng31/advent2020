# day3
# return number of trees encountered
# https://adventofcode.com/2020/day/3
# part 1: top-left, slope [3,-1] 
# part 2: get product of trees of following slopes:
# [1, -1]
# [3, -1] 
# [5, -1]
# [7, -1]
# [1, -2] 
# `path.txt`
# notes at very end explain thought process

$path = Array.new()

File.foreach("path.txt") {
	|line| $path.push(line.strip)
}

def getTrees(x, y)
	trees = 0
	y *= -1
	row = 0
	lat = 0

	while row < $path.size()
		pos = (lat % ($path[row].length()))

		trees += ($path[row])[pos] == "\#" ? 1:0

		row+=y
		lat+=x
	end

	return trees

end

puts "Part 1: " + getTrees(3, -1).to_s
puts "Part 2: " + (getTrees(1,-1)*getTrees(3,-1)*getTrees(5,-1)*getTrees(7,-1)*getTrees(1,-2)).to_s

# looks simple, path repeats and extends to the right infinitely meaning
# we can just re-iterate loop from the beginning. 
# .... part two means I just have to rewrite everything as a function now