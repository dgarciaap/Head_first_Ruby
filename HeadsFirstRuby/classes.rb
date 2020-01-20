class Bird
    attr_accessor :name, :age
    # #Attribute writer 
    # def name=(new_value)
    #     @name = new_value
    # end

    # #Attribute reader
    # def name
    #     @name
    # end

    # def age=(new_value)
    #     @age = new_value
    # end

    # def age
    #     @age
    # end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

    def talk(name)
        puts "#{@name} says Chirp! Chirp!"
    end

    def move(name, destination)
        puts "#{@name} flies to the #{destination}."
    end
end

class Dog
    attr_reader :name, :age
    #Validating
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
    #attr_accessor :name, :age
    # #Attribute writer 
    # def name=(new_value)
    #     @name = new_value
    # end

    # #Attribute reader
    # def name
    #     @name
    # end

    # def age=(new_value)
    #     @age = new_value
    # end

    # def age
    #     @age
    # end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

    def make_up_name
        @name = "Sandy"
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

end

class Cat 
    attr_accessor :name, :age #Create attribute accesors for name and age
    #Attribute writer 
    # def name=(new_value)
    #     @name = new_value
    # end

    # #Attribute reader
    # def name
    #     @name
    # end

    # def age=(new_value)
    #     @age = new_value
    # end

    # def age
    #     @age
    # end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

    def talk
        puts "#{@name} says Meow!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bruno = Dog.new
bruno.name = "Bruno"
bruno.move("kitchen")
bruno.age = 2
bruno.report_age
magnus = Dog.new
magnus.name = "Magnus"
magnus.age = 6
magnus.move("sofa")
magnus.report_age

#Validating
error = Dog.new
error.name = ""
error.age = 3
error.report_age


class Blender

    def close_lid
        puts "Sealed tight!"
    end

    def blend(speed)
        puts "Spinning on #{speed} setting."
    end
    
end

blender = Blender.new
blender.close_lid
blender.blend("high")

#Accessor methods
class MyClass
    #Attribute writer method (setter)
    def my_attribute=(new_value) #'=' part of the method name (indicates attribute writer methods)
        @my_attribute = new_value
    end

    #Attribute reader method (getter)
    def my_attribute
        @my_attribute
    end
end