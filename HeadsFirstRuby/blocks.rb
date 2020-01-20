#A BLOCK IS JUST A CHUNK OF CODE THAT YOU PASS INTO A METHOD (linked to this single method) (Method can only receive one block)

def my_method(&my_block) #if you place an & be4 the last parameter in a method, Ruby expects a block
    puts "We're in the method, about to invoke your block!"
    my_block.call #the call method calls the block
    puts "We're back in the method"
end

#MY FIRST BLOCK (Blocks are meant to be used together with methods)
my_method do #Block has to be named exactly as the method we're gonna call it in
    puts "We're in the block"
end 

#Example 2
def twice(&my_block)
    puts "In the method, about to call the block!"
    my_block.call
    puts "Back in the method, about to call the block again!"
    my_block.call
    puts "Back in the method, about to return!"
end

twice do
    puts "Wooo!"
end

#PARAMETERS
def give(&my_block)
    my_block.call("2 turtle doves", "1 partridge")
end

give do |present1, present2| #parameters between | |
    puts "My method gave to me..."
    puts present1, present2
end

#YIELD (used in most cases)
def give(&my_block)
    my_block.call("2 turtle doves", "1 partridge")
end

def give #We don't need '&my_block'
    yield "2 turtle doves", "1 partridge" #Subs the 'my_block.call'
end

#2 DIFFERENT BLOCK FORMATS
def run_block
    yield
end

run_block do
    puts "do/end"
end

run_block { puts "brackets" }

#Example 2
def take_this
    yield "present"
end

take_this do |thing|
    puts "do/end block got #{thing}"
end

take_this { |thing| puts "brackets blog got #{thing} "}

#Methods handle the general work that's needed on a wide variety of tasks
#Blocks handle the the logic that's specific to and individual task

#Example 3
def my_method
    yield 1
    yield 2
    yield 3
end

my_method { |param| puts param}

