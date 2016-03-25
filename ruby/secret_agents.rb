
=begin

pseudocode

Encrypt method

counter = length of string

while counter is less than string length

newstring += string[counter].next

end


Decrypt method

"abcdefghijklmnopqrstuvwxyz"[-1]

"abcdefghijklmnopqrstuvwxyz".index(l) => #
"abcdefghijklmnopqrstuvwxyz".[# - 1] =>new l
add new l new string

=end

# Methods #

def encrypt(str) 
  
  str.downcase!
  
  counter = 0
  length = str.length
  newString = ""
  
  while counter < length
    
    currentLetter = str[counter]
    
    if currentLetter == "z"
      newString = newString + "a"
    elsif currentLetter == " "
      newString = newString + " ";
    else    
      newString = newString + currentLetter.next
    end
    
    counter += 1
  end
  
  return newString
  
end



#puts encrypt("weekend")
#puts encrypt("zebra")


def decrypt(str)
  
  str.downcase!
  
  counter = 0
  length = str.length
  newString = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while counter < length
    
    currentLetter = str[counter]
    
    if currentLetter == "a"
      
      newString = newString + "z";
      
    elsif currentLetter == " "
      
      newString = newString + " ";
      
    else
      
      place = "abcdefghijklmnopqrstuvwxyz".index(currentLetter) 

      newPlace = place - 1

      nextLetter = "abcdefghijklmnopqrstuvwxyz"[newPlace]

      newString = newString + nextLetter;
      
    end
    
      counter += 1
    
  end
  
  return newString
  
end


#puts decrypt("xfflfoe")


#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#puts decrypt(encrypt("The duck flies at midnight"))

#puts decrypt(encrypt("The duck flies at midnight"))


# Step-by-step code #

puts "Would you like to decrypt or encrypt your password?"
answer = gets.chomp

puts "What is your password?"
password = gets.chomp

if answer == "encrypt"
  puts encrypt password
else
  puts decrypt password
end






