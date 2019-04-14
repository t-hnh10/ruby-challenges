# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

# backlog_hash = {"latte" => 6, "scone" => 2, "tea" => 3} # Creating initial hash values

# puts "Welcome to the Cute Cat Cafe! Please enter your order when you're ready. (options: latte, scone, tea)"
# order = gets.chomp.downcase
# backlog_hash[order] = backlog_hash.fetch(order, 0) + 1 # Key might not be in hash, using fetch to have 0 then increment and assign back to that key
# puts "You've just ordered a #{order}."

# # Print the final order so you know what to make.
# puts "Final order to make: " + backlog_hash.map { |k, v| "#{v} #{k}(s)" }.join(", ")

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

# class Ordering
#     attr_accessor :sell_price, :make_price
    
#     def initialize(sell_price, make_price)
#         @sell_price = sell_price
#         @make_price = make_price
#     end

#     def calc_profit
#         return '%.2f' % (sell_price.to_f - make_price.to_f) 
#     end
# end

# latte = Ordering.new(4, 2)
# scone = Ordering.new(5, 3)
# tea = Ordering.new(3, 0.50)

# puts "Total profit: $#{latte.calc_profit} for lattes, $#{scone.calc_profit} for scones & $#{tea.calc_profit} for tea."

# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

class Ordering
    attr_accessor :item, :qty_ordered, :qty_num
    
    def initialize(item, qty_total, sell_price, make_price)
        @item = item
        @qty_ordered = 0
        @qty_ordered = qty_ordered
        @qty_total = qty_total
        @sell_price = sell_price
        @make_price = make_price
    end

    # Defining method to ascertain quantity requested
    def qty_req
        puts "Please enter desired quantity:"
        qty_num = gets.chomp.to_i
        self.add_qty(qty_num) # Self referring to current object
        puts "You have just ordered: #{qty_num} #{@item}(s)."
        puts "Total amount ordered: #{@qty_ordered} #{@item}(s)."
    end

    # Keep the quantity of items updated
    def add_qty(qty_num)
        @qty_ordered += qty_num
        @qty_total += qty_num
    end

    # Defining method to calculate profit
    def calc_profit
        return '%.2f' % ((@sell_price.to_f - @make_price.to_f) * @qty_ordered)
    end
end

# New instances
# Using $ to set global variables
$latte = Ordering.new("latte", 6, 4, 2)
$scone = Ordering.new("scone", 2, 5, 3)
$tea = Ordering.new("tea", 3, 3, 0.50)

# Defining ordering method
def order_method(item)
    if item == "latte"
        $latte.qty_req
    elsif item == "scone"
        $scone.qty_req
    elsif item == "tea"
        $tea.qty_req
    elsif item == "q"
        puts "No worries! Your total order: #{$qty_ordered} #{$item}." # Does not work
    else
        puts "I'm sorry, we don't serve that."
    end
end

# Main app / beginning of user interaction
loop do
puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
order = gets.chomp.downcase
    if order == "q"
        puts "Thank you! Your order: #{$qty_ordered} #{$item}." # Does not work
        puts "Total profit: $#{$latte.calc_profit} for lattes, $#{$scone.calc_profit} for scones & $#{$tea.calc_profit} for tea."
        abort
    else
        order_method(order)
        puts "Would you like to order anything else? (yes/no)"
        option = gets.chomp.downcase
            if option == "yes"
                puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
                order = gets.chomp.downcase
                order_method(order)
            else
                puts "Thank you! Your order: #{$qty_ordered} #{$item}." # Does not work
                puts "Total profit: $#{$latte.calc_profit} for lattes, $#{$scone.calc_profit} for scones & $#{$tea.calc_profit} for tea."
                abort
            end
    end
end

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00