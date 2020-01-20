class Animal
    attr_accessor :name, :age

    def name=(value)
        if value == ""
            raise "Name can't be blank!" #Message of error, program stops there
        end
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
        @age = value
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

class Dog < Animal

    def to_s
        puts "#{@name} the dog, age #{@age}"
    end

end

class Bird < Animal
    
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end

end

class Cat < Animal

    def talk 
        puts "#{@name} says Meow!"
    end

end

class Armadillo < Animal

    def move(destination)
        puts "#{@name} unrolls!"
        super #Calls the same method at the superclass, so we don't have to write the same line twice
    end

end

army = Armadillo.new
army.name = "army"
army.move("cave")

bruno = Dog.new
bruno.name = "Brunito"
bruno.age = 2

#te to_s method is already called when printing objects, so we can leave that off
#bruno.to_s
puts bruno
