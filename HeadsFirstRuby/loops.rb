#Given an array of prices, add them all together and return the total.
prices = [3.99, 25.00, 8.99]

def total(prices)
    index = 0
    amount = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount
end

puts format("%0.2f", total(prices)) #formatting output to 0.2 float

#Given an array of prices, subtract each price from the customer's account balance.
def refund(prices)
    index = 0
    amount = 0
    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount
end

puts format("%0.2f", refund(prices))

# Given an array of prices, reduce each item's price by 1/3, and print the savings.
def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] * 0.33
        puts format("Your discount: %0.2f", amount_off)
        index += 1
    end
end

puts show_discounts(prices)
