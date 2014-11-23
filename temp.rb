# This is a demo file to play with ruby

s = "Hello: I`m a l33t programmer!!"
p s.split(/[^a-zA-Z]/).reject{|e| e == "I"}

#["Hello", "m", "a", "l", "t", "programmer"]
