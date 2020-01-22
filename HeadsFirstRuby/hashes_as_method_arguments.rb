#---------UGLY VERRSION---------------

# class Candidate
#     attr_accessor :name, :age, :occupation, :hobby, :birthplace

#     def initialize(name, age, occupation, hobby, birthplace)
#         self.name = name
#         self.age = age
#         self.occupation = occupation
#         self.hobby = hobby
#         self.birthplace = birthplace
#     end

#     def print_summary(candidate)
#         puts "Candidate: #{candidate.name}"
#         puts "Age: #{candidate.age}"
#         puts "Occupation: #{candidate.occupation}"
#         puts "Hobby: #{candidate.hobby}"
#         puts "Birthplace: #{candidate.birthplace}"
#     end
# end

# candidate = Candidate.new("Bernie", 65, "Attorney", nil, "Miami")
# candidate.print_summary(candidate)

#-------------------------------------------

#----HASHES AS ARGUMENT METHODS---------
# def area(options)
#     options[:length] * options[:width]
# end

# puts area({:length => 2, :width => 4})

#--------PRETTY VERSION------------------
# class Candidate 
#     attr_accessor :name, :age, :occupation, :hobby, :birthplace

#     def initialize(name, options = {}) #Optional, if no hash is passed, use an empty one
#         self.name = name
#         self.age = options[:age]
#         self.occupation = options[:occupation]
#         self.hobby = options[:hobby]
#         self.birthplace = options[:birthplace]
#     end

# end

# candidate = Candidate.new("Bernie", 
#     {:age => 37, :occupation => "Attorney", :birthplace => "Miami"})

# #No braces!! (as long as the hash argument is the final argument)
# candidate2 = Candidate.new("Diana", :age => 22, :occupation => "Engineer", :birthplace => "Jalisco")

# #Leave out the arrows!! if a hash uses
# # symbols as keys, hash literals let you leave the colon (:) off the symbol
# # and replace the hash rocket (=>) with a colon.
# candidate3 = Candidate.new("Laura", age: 35, occupation:"Student", birthplace: "Jalisco")

#----EXCERCISE (CODE MAGNETS)-------
def volume(options)
    options[:height] * options[:width] * options[:depth]
end

result = volume(width: 10, height: 5, depth: 2.5)
puts "Volume is #{result}"

#------KEYWORD ARGUMENTS (WARNS YOU ABOUT TYPOS)-----------
class Candidate 
    attr_accessor :name, :age, :occupation, :hobby, :birthplace

    #required keywords (no default value age:, occupation:)
    def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek") #We replace the hash parameter with keyword and default value
        self.name = name
        self.age = age #we use parameter names instead of hash keys
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end
end

p Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")