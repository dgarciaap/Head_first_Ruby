#Arrays have an each method which invokes a block once for each item in an array.

def total(prices)
    amount = 0
    prices.each do |price| #for each price add the amount EACH WORKS LIKE A BLOCK
        amount += price
    end
    amount #returns total amount
end

def refund(prices)
    amount = 0
    prices.each do |price|
        amount -= price
    end
    amount
end

def show_discounts(prices)
    prices.each do |price|
        amount_of = price * 0.33
        puts format("Your discount: %0.2f", amount_of)
    end
end

prices = [3.99, 25.00, 8.99]
puts format("%0.2f", total(prices))
puts format("%0.2f", refund(prices))
show_discounts(prices)

#EXCERCISE
#Words: *|word|* *original_length* *new_word* *new_length* *original_length* *my_words* yield *each* *new_length* shrink new

def pig_latin(words)
    original_length = 0
    new_length = 0
    words.each do |word|
        puts "Original word: #{word}"
        original_length += word.length
        letters = word.chars #converts word into an array of charts
        first_letter = letters.shift #deletes first letter of the array and saves it into first_letter
        new_word = "#{letters.join}#{first_letter}ay"  #joins letters and puts first letter at the end
        puts "Pig Latin word: #{new_word}" 
        new_length += new_word.length
    end
    puts "Total original length: #{original_length}"
    puts "Total Pig Latin length: #{new_length}"

end

my_words = ["blocks", "totally", "rock"]
pig_latin(my_words)

#Excercise 2
def make_casserole
    puts "Preheat oven to 375 degrees"
    ingredients = yield
    puts "Place #{ingredients} in dish"
    puts "Bake for 20 minutes"
end

make_casserole do 
    { "Rice, broccoli, and chicken" }
end

make_casserole do
    { "noodle, celery, and tuna" }
end
