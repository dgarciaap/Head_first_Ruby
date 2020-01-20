# review_file = File.open("review_file.txt")

# lines = review_file.readlines #literally reads lines from a file and stores them in an array
# puts "Line 4: #{lines[3]}"
# puts "Line 1: #{lines[0]}"

# review_file.close

#Open file with a block and automatically closing once we're finished
lines = [] #So we can access the viariable outside the block

File.open("review_file.txt") do |review_file|
    lines = review_file.readlines #literally reads lines from a file and stores them in an array
end

# ONE WAY TO GET ALL THE LINES THAT INCLUDE TRUNCATED
# lines.each do |line|
#     if line.include?("Truncated")
#         relevant_lines << line #Add line at the end of the array
#     end
# end

# BEST WAY (find all works like a block) and stores all true lines
relevant_lines = lines.find_all { |line| line.include?("Truncated")} #this block returns a value (true or false)

#Findind bad reviews and eliminate them from the relevant lines
kept_lines = relevant_lines.reject { |line| line.include?("--") } #if true discard it

# string = lines.first
# words = string.split(" ");
# p words


def find_adjective(string)
    words = string.split(" ") #save all the words in an array
    index = words.find_index("is") #returns the array index where 'is' is found (after 's' there's always an adjective)
    words[index + 1] #returns adjective
end

#way 1: finding the adjectives for each line
# kept_lines.each do |line|
#     adjectives << find_adjective(line)
# end

#way 2 MAP The map method adds the block's return value itself to the new array FOR TRANSFORMING DATA
#returns a new array with the transformed elements
adjectives = kept_lines.map do |line| 
    adjective = find_adjective(line) 
    "'#{adjective.capitalize}'" #return adj capitalized
end

# caps = adjectives.map { |adjective| adjective.capitalize } ONLY CAPITALIZES THE FIRST LETTER OF EACH ADJECTIVE

puts "The critic agree, Truncated is: "
puts adjectives
# puts kept_lines