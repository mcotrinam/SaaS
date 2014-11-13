#------- PART 1: --------
#Define a method sum which takes an array of integers as an argument and 
#returns the sum of its elements. For an empty array it should return zero.
def sum(array)
    sum = 0
    array.each {|x| sum += x}
    return sum
end
#puts sum([1,2,3,4])



#Define a method max_2_sum which takes an array of integers as an argument 
#and returns the sum of its two largest elements. For an empty array it should return zero. 
#For an array with just one element, it should return that element.
def max_2_sum(array)
    sum = 0
    if array.length > 2
        temp = array.sort{|a,b| b <=> a}
        sum = temp[0] + temp[1]
    elsif array.length == 1
        sum = array[0]
    end
    return sum
end
#puts max_2_sum([2,4,6,7,2,12,4,55])



#Define a method sum_to_n? which takes an array of integers and an additional integer, n, 
#as arguments and returns true if any two distinct elements in the array of integers sum to n. 
#An empty array or single element array should both return false.
def sum_to_n?(array,n)
    array.permutation(2).each do |a,b|
        if a + b == n
            return true
        end
    end
    return false
end
#puts sum_to_n?([2,4,6,7,2,12,4,55],10)



#------- PART 2: --------
#Define a method hello(name) that takes a string representing a name 
#and returns the string "Hello, " concatenated with the name.
def hello(name)
    return "Hello, " + name.to_s
end
#puts hello("Miguel")




#Define a method starts_with_consonant?(s) that takes a string and returns 
#true if it starts with a consonant and false otherwise. (For our purposes, a consonant 
#is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
    /^[bcdfghjklmnpqrstvwxyz]/i === s[0]
end
#puts starts_with_consonant?("miguel") 



#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the 
#string represents a binary number that is a multiple of 4. 
#NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
    bin = /^[1|0]+/.match(s)
	if bin
		return bin.to_s.to_i(2) % 4 == 0
	else
		return false
	end
end
#puts binary_multiple_of_4?("g1100")




#------- PART 3: --------
#Define a class BookInStock which represents a book with an isbn number, isbn, and price of the book as a 
#floating-point number, price, as attributes. The constructor should accept the ISBN number (a string) as 
#the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) 
#if the ISBN number is the empty string or if the price is less than or equal to zero.

#Include the proper getters and setters for these attributes. Include a method price_as_string that returns the price 
#of the book with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" 
#and a price of 33.8 should display as "$33.80".

class BookInStock
    def initialize(isbn, price)
        raise ArgumentError.new("No valid ISBN") if isbn.empty?
        @isbn = isbn
        raise ArgumentError.new("Wrong price") if price <= 0
        @price = price
    end
    
    # setter for isbn
    def isbn=(value)
        @isbn = value
    end
    # getter for isbn
    def isbn
        @isbn
    end
    # setter for price
    def price=(value)
        @price = value
    end
    # getter for price
    def price
        @price
    end
    
    def price_as_string
        return "$" + ('%.2f' % @price).to_s 
    end
end
#book = BookInStock.new( "121212" , 33.8)
#puts book.price_as_string