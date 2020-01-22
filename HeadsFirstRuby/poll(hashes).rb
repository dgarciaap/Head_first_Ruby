lines = []
File.open("votes.txt") do |file|
    lines = file.readlines
end

#return nil when accessing a key that doesn't have a value yet
# votes = {} 

# lines.each do |line|
#     name = line.chomp
#     if votes[name] #!= nil (if it's true, we don't need to add the nil)# #If we've seen this name before, otherwise it would add 1 to nil
#         votes[name] += 1
#     else #If votes[name] = nil
#         votes[name] = 1 #If this is our first sight of the name
#     end
# end

# p votes

votes = Hash.new(0) #default value so we don't get a nil back when we try to count votes

lines.each do |line|
    name = line.chomp
    name.upcase! #normalize input in order for keys to have the same value
    votes[name] += 1
end

votes.each do |name, count|
    puts "#{name}: #{count} votes"
end