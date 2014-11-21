module FunWithStrings
  def palindrome?
    self.downcase.gsub(/[^a-z]/,'') == self.downcase.gsub(/[^a-z]/,'').reverse
  end
  
  def count_words
    words = Hash.new(0)
    self.downcase.scan(/\w+/) do |w|
      words[w] += 1
    end
    return words
  end
  
  def anagram_groups
    self.split(' ').group_by {|word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end


#p 'scream cars for four scar creams'.anagram_groups

#puts 'Doo bee doo bee doo'.count_words

#puts 'abracadabra'.palindrome?
#puts 'ReDivider'.palindrome?
#puts 'A man, a plan, a canal -- Panama'.palindrome?
