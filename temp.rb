#PART 1: 
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